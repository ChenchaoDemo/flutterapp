import 'package:flutter/material.dart';
import 'package:flutterapp/ui/NavPage.dart';
import 'package:flutterapp/utils/HiveUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

void main() async  {
  await Hive.initFlutter();
  // 打开一个 Box 存储数据，Box 是 Hive 中的一个存储单元
  await HiveUtils.initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    usernameController.text= HiveUtils.getData('username') ?? '';
    passwordController.text= HiveUtils.getData('password') ?? '';
  }
  void login(BuildContext context, String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(
          msg: "账号密码不能为空",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    }else if(username == 'qwer' && password == '123') {
      Fluttertoast.showToast(
          msg: "登录成功",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
      HiveUtils.putData('username', username);
      HiveUtils.putData('password', password);
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => NavPage()), // 跳转到底部导航页面
      );
      // Navigator.pushNamed(context, '/home');
    }else {
      Fluttertoast.showToast(
          msg: "账号密码错误",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                login(context, usernameController.text, passwordController.text);
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
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    // // 释放资源
    // await HiveUtils.clearData();
  }
}