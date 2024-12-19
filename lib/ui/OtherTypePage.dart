// 文件名: OtherTypePage
// 作者: A
// 创建日期: 2024-11-22
// 描述: 

import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';

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
  String _textInfo2= '数据信息2';

  late StreamSubscription<List<ScanResult>> _scanRetsSubscription;
  late StreamSubscription<bool> _isScanningSubscription;
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
              height: 50,
              padding: EdgeInsets.only(left: 20, right: 20,top: 10, bottom: 10),
              color: Colors.white,
              child: Text(_textInfo, textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(height: 20),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 20, right: 20,top: 10, bottom: 10),
              color: Colors.white,
              child: Text(_textInfo2, textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
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
        getBlueInfo();
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

        getNfcInfo();
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

  void  getBlueInfo() {
    FlutterBluePlus.startScan(timeout: Duration(seconds: 40));
    _scanRetsSubscription = FlutterBluePlus.scanResults.listen((rets) {
      // _scanRets = rets;
      rets.forEach((element) {
        print("设备名称: ${element.device.name}"+ "设备ID: ${element.device.id}"+ "设备信号强度: ${element.rssi}");
      });
      if(mounted){
        setState(() {
          _textInfo2 = rets.length.toString();
        });
      }
    }, onError: (err){
      print("scan error: $err");
    });
    _isScanningSubscription = FlutterBluePlus.isScanning.listen((event) {
      if(mounted){
        setState(() {
          _textInfo = '搜索状态: $event';
        });
      }
    });
  }

  Future<void>  getNfcInfo() async{
    try {
      // 开始 NFC 会话
      await NfcManager.instance.startSession(
        onDiscovered: (NfcTag tag) async {
          // 扫描到 NFC 标签后，更新 UI 显示标签数据
          setState(() {
            // 如果想查看详细的标签信息，可以打印 tag
            _textInfo = 'NFC 标签数据: ${tag.data}';
          });

          // 结束 NFC 会话
          await NfcManager.instance.stopSession();
        },
      );
    } catch (e) {
      setState(() {
        _textInfo = 'NFC 扫描失败: $e';
      });
    }

    // String _nfcTag = '无法读取标签';
    // try {
    //   NfcData result = await NfcInFlutter.readNfc();
    //   setState(() {
    //     _nfcTag = result.id ?? '无法读取标签';
    //   });
    // } catch (e) {
    //   setState(() {
    //     _nfcTag = 'NFC扫描失败: $e';
    //   });
    // }
    // if (Platform.isAndroid) {
    //   NfcManager.instance.startSession(onDiscovered: (NfcTag tag) {
    //     print('Discovered tag: $tag');
    //   });
    // }
  }
  void _requestPermission() async {
    // final status = await Permission.location.request();
    // if (status.isGranted) {
    //   print('定位权限已授权');gs
    // } else {
    //   print('定位权限未授权');
    // }
  }

  @override
  void dispose() {
    super.dispose();
    // 停止 NFC 会话
    NfcManager.instance.stopSession();
  }
}
