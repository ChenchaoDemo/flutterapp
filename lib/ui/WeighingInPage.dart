// 文件名: WeighingInPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class WeighingInPage extends StatefulWidget {
  const WeighingInPage({Key? key}) : super(key: key);

  @override
  _WeighingInPageState createState() => _WeighingInPageState();
}

class _WeighingInPageState extends State<WeighingInPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('WeighingInPage'),
      ),
    );
  }
}
