// 文件名: OtherTypePage
// 作者: A
// 创建日期: 2024-11-22
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';
// import 'package:flutter_amap_base/amap_base.dart';
import 'package:flutter_amap_base/amap_base.dart';

class OtherTypePage extends StatefulWidget {
  const OtherTypePage({Key? key}) : super(key: key);

  @override
  _OtherTypePageState createState() => _OtherTypePageState();
}

class _OtherTypePageState extends State<OtherTypePage> {
  List<String> _listData = ['定位', '导航', '蓝牙','扫码','NFC','其他'];
  String _textInfo= '数据信息';

  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

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
        setState(() {
          _textInfo = '定位信息';
        });
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
    AMapLocation aMapLocation=AMapLocation();
    aMapLocation.init();
    await aMapLocation.getLocation(LocationClientOptions()).then((value) {
      print('定位信息：${value.toJson()}');
    });
    aMapLocation.startLocate(LocationClientOptions()).listen((event) {
      print('定位信息：${event.toJson()}');
    });


  }

  void _requestPermission() async {
    // final status = await Permission.location.request();
    // if (status.isGranted) {
    //   print('定位权限已授权');
    // } else {
    //   print('定位权限未授权');
    // }
  }


}
