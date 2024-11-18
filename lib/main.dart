import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/ui/NavPage.dart';
import 'package:flutterapp/utils/HiveUtils.dart';
import 'package:flutterapp/utils/RSAEncryptionUtils.dart';
import 'package:flutterapp/viewmodel/LoginViewModel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'net/HttpService.dart';

void main() async  {
  await Hive.initFlutter();
  // 打开一个 Box 存储数据，Box 是 Hive 中的一个存储单元
  await HiveUtils.initHive();
  //适配屏幕
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}
//登录页
class _LoginPageState extends State<LoginPage> {
  final TextEditingController basecodeController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    basecodeController.text= HiveUtils.getData('basecode') ?? '';
    usernameController.text= HiveUtils.getData('username') ?? '';
    passwordController.text= HiveUtils.getData('password') ?? '';
  }
  Future<void> login(BuildContext context,String baseCode, String username, String password) async {
    if (baseCode.isEmpty || username.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(
          msg: "基地代码,账号密码不能为空",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    }else{
      print("加密$password" );
      String encodePassword ="";
      await RSAEncryptionUtils.encodeString(password).then((value) {
        encodePassword = value;
        print("加密结果:    $value");
      });
      await HttpService().postWithQueryParams('user/login',
          queryParams: {
            'baseCode': baseCode,
            'username': username,
            'password': encodePassword
          }).then((value) {
        print('Response Data: $value');
      });

      HiveUtils.putData('basecode', baseCode);
      HiveUtils.putData('username', username);
      HiveUtils.putData('password', 'yicun1234');
      // Get.to(NavPage());
    }
      // else {
    //   Fluttertoast.showToast(
    //       msg: "账号密码错误",
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       timeInSecForIosWeb: 1,
    //       fontSize: 16.0
    //   );
    // }
  }
  @override
  Widget build(BuildContext context) {
    //根据设计图纸的大小设置 传入设计图尺寸
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(100),
            child: Column(
              children: [
                SizedBox(height: 20),
                AppBar(
                  title: const Text(
                      '用户登录',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    )
                  ),
                  centerTitle: true,
                  elevation: 0,
                ),
              ],
            )
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal:100, vertical: 10),
                child: TextField(
                  controller: basecodeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '基地代码',
                    hintText: '请输入基地代码',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal:100, vertical: 10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: '用户名',
                    hintText: '请输入用户名',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal:100, vertical: 10),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  login(context,basecodeController.text, usernameController.text, passwordController.text);
                },
                child: const Text('登录'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // 圆角
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    // // 释放资源
    // await HiveUtils.clearData();
  }
}