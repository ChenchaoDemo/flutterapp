// 文件名: ViewPlanPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class ViewPlanPage extends StatefulWidget {
  const ViewPlanPage({Key? key}) : super(key: key);

  @override
  _ViewPlanPageState createState() => _ViewPlanPageState();
}

class _ViewPlanPageState extends State<ViewPlanPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('ViewPlanPage'),
      ),
    );
  }
}
