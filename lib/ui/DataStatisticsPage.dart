// 文件名: DataStatisticsPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class DataStatisticsPage extends StatefulWidget {
  const DataStatisticsPage({Key? key}) : super(key: key);

  @override
  _DataStatisticsPageState createState() => _DataStatisticsPageState();
}

class _DataStatisticsPageState extends State<DataStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments ?? '';
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('DataStatisticsPage'),
      ),
    );
  }
}
