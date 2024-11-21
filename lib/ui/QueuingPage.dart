// 文件名: QueuingPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/utils/ToastUtils.dart';
import 'package:get/get.dart';

import '../widget/CustomAppBar.dart';

class QueuingPage extends StatefulWidget {
  const QueuingPage({Key? key}) : super(key: key);
  @override
  _QueuingPageState createState() => _QueuingPageState();
}

class _QueuingPageState extends State<QueuingPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('QueuingPage '),
      ),
    );
  }
}
