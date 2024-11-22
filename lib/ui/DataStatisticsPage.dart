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
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  ToastUtils.showBottom("点击了原粮数据统计");
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 30,right: 30, top: 20,bottom: 20),
                  padding: EdgeInsets.only(left: 40,right: 40, top: 20,bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/home_grain_statistics.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 30),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '原粮数据统计',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ToastUtils.showBottom("点击了加工数据统计");
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 30,right: 30, top: 20,bottom: 20),
                  padding: EdgeInsets.only(left: 40,right: 40, top: 20,bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/home_production_finished_goods_statistics.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 30),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '成品数据统计',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              color: Colors.white,
              child:Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.blueAccent,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child:Text(
                    '返回',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
