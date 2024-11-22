// 文件名: OtherTypePage
// 作者: A
// 创建日期: 2024-11-22
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_z_location/flutter_z_location.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class OtherTypePage extends StatefulWidget {
  const OtherTypePage({Key? key}) : super(key: key);

  @override
  _OtherTypePageState createState() => _OtherTypePageState();
}

class _OtherTypePageState extends State<OtherTypePage> {
  List<String> _listData = ['定位', '导航', '蓝牙','扫码','NFC','其他'];
  String _textInfo= '数据信息';
  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'];
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: _listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(_listData[index]),
                ),
                onTap: () {
                  selectType(_listData[index]);
                },
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              padding: EdgeInsets.only(left: 20, right: 20,top: 10, bottom: 10),
              color: Colors.white,
              child: Text(_textInfo, textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
  void selectType(String type){
    switch(type){
      case '定位':
        getLocateInfo();
        break;
      case '导航':
        setState(() {
          _textInfo = '导航信息';
        });
        break;
      case '蓝牙':
        setState(() {
          _textInfo = '蓝牙信息';
        });
        break;
      case '扫码':
        setState(() {
          _textInfo = '扫码信息';
        });
        break;
      case 'NFC':
        setState(() {
          _textInfo = 'NFC信息';
        });
        break;
      case '其他':
        setState(() {
          _textInfo = '其他信息';
        });
        break;
    }
  }

  Future<void> getLocateInfo() async {
  //   // 获取GPS定位经纬度
  //   final coordinate = await FlutterZLocation.getCoordinate();
  //   // 经纬度反向地理编码获取地址信息(省、市、区)
  //   final res1 = await FlutterZLocation.geocodeCoordinate(coordinate.latitude, coordinate.longitude, pathHead: 'assets/');
  //
  //   // 获取ip地址
  //   final ipStr = await FlutterZLocation.getIp();
  //   // 经纬度反向地理编码获取地址信息(省、市、区)
  //   final res2 = await FlutterZLocation.geocodeIp(ipStr, pathHead: 'assets/');
  //
  //   setState(() {
  //     _textInfo = '经纬度：${coordinate.latitude},${coordinate.longitude}\n'
  //         '地址：${res1.province},${res1.city},${res1.district}\n'
  //         'IP：$ipStr\n'
  //         '地址：${res2.province},${res2.city},${res2.district}';
  //   });
  }
}
