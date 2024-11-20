// 文件名: TradeReportPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class TradeReportPage extends StatefulWidget {
  const TradeReportPage({Key? key}) : super(key: key);

  @override
  _TradeReportPageState createState() => _TradeReportPageState();
}

class _TradeReportPageState extends State<TradeReportPage> {
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments ?? '';
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: const Center(
        child: Text('TradeReportPage'),
      ),
    );
  }
}
