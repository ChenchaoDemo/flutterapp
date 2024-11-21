// 文件名: QuickRegistrationPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class QuickRegistrationPage extends StatefulWidget {
  const QuickRegistrationPage({Key? key}) : super(key: key);

  @override
  _QuickRegistrationPageState createState() => _QuickRegistrationPageState();
}

class _QuickRegistrationPageState extends State<QuickRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('QuickRegistrationPage'),
      ),
    );
  }
}
