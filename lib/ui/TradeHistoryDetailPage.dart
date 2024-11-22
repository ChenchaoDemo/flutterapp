// 文件名: TradeHistoryDetailPage
// 作者: A
// 创建日期: 2024-11-21
// 描述: 交易历史详情

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/sell_out_entitiy.dart';
import '../model/sell_trade_detail_entitiy.dart';
import '../net/HttpService.dart';
import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';
import '../widget/CustomTextTitle.dart';

class TradeHistoryDetailPage extends StatefulWidget {
  const TradeHistoryDetailPage({Key? key}) : super(key: key);

  @override
  _TradeHistoryDetailPageState createState() => _TradeHistoryDetailPageState();
}

class _TradeHistoryDetailPageState extends State<TradeHistoryDetailPage> {
  String _orderNo = '';
  SellTradeDetailData? _sellItem;
  @override
  void initState() {
    super.initState();
    final Map<String, dynamic> args =Get.arguments;
    SellOutDataData sellOutDataData= args['item'] ?? SellOutDataData();
    _orderNo = sellOutDataData.number ?? '';
    getSellDetail();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar( title: '交易历史详情', onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: Stack( // 重叠布局
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
              child:Column(
                  children: [
                    CustomTextTitle(text: '交易单号'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text(_orderNo,textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '出库方式'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('成品回款出库',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '数据来源'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('系统出库',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '商品信息'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('商品信息',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '交易金总金额'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('合计总金额',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '出入磅信息'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('出入磅信息',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '客户信息'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Text('客户信息',textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 10),
                    CustomTextTitle(text: '商户信息'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text('基地',textAlign: TextAlign.left),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text( _sellItem?.baseStation?.name ?? '',textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text('公司',textAlign: TextAlign.left),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(_sellItem?.baseStation?.company ?? '',textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text('制卡时间',textAlign: TextAlign.left),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(_sellItem?.baseStation?.phone ?? '',textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text('操作员',textAlign: TextAlign.left),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(_sellItem?.operatorName ?? '',textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text('交易确认时间',textAlign: TextAlign.left),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(_sellItem?.baseStation?.updateTime ?? '',textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ]
              ),
            ),
            Positioned( // 定位布局
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom:20),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '历史交易单',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          ToastUtils.showBottom('补打交易单');
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '补打交易单',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }

  Future<void> getSellDetail() async {
    await HttpService().postWithQueryParams('sell/findByOutOrderNo', queryParams: {
      'orderNo': _orderNo,
    }).then((value) {
      SellTradeDetailEntitiy item=SellTradeDetailEntitiy.fromJson(jsonDecode(value));
      if(item.code==200){
        setState(() {
          _sellItem = item.data;
        });
        print(item.data?.toJson());
      }
    });
  }
}
