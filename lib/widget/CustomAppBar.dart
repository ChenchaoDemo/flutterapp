// 文件名: CustomAppBar
// 作者: A
// 创建日期: 2024-11-19
// 描述:

import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../model/base_set_entitiy.dart';
import '../model/out_storage_weight_entitiy.dart';
import '../net/HttpService.dart';
import '../utils/HiveUtils.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title; // 标题
  final VoidCallback? onProfileTap; // 头像按钮点击事件
  CustomAppBar({
    Key? key,
    required this.title,
    this.onProfileTap,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
class _CustomAppBarState extends State<CustomAppBar> {
  final GlobalKey _buttonKey = GlobalKey(); // 用于获取按钮的位置
  String _userName = 'XXX';
  final List<String> _texts = [
    "今日出库成品",
    "今日出库原粮",
    "基地信息",
  ];
  @override
  void initState() {
    super.initState();
    _userName = HiveUtils.getData('username') ?? 'XXX';
    //网络请求
    initNet();
  }

  initNet() async {
    //网络请求
    await HttpService().postWithQueryParams("sell/getOutStorageWeightToday", queryParams: {
    }).then((value) {
      OutStorageWeightEntitiy item=OutStorageWeightEntitiy.fromJson(jsonDecode(value));
      setState(() {
        if(item.code==200){
          _texts.clear();
          _texts.add("今日出库成品："+item.data!.productWeightToday.toString()+'吨,价格：'+item.data!.productPriceToday.toString()+'元');
          _texts.add("今日出库原粮："+item.data!.weight.toString()+'吨,价格：'+item.data!.price.toString()+'元');
        }else{
          _texts.clear();
          _texts.add("查询当前基地当日入库重量 getInstorageWeightToday 接口异常：${item.message}");
        }
      });
    });

    //获取基地信息接口
    await HttpService().get("baseStation/getBaseSettings",params:{
      'type': 2,
    }).then((value) {
      BaseSetEntitiy item=BaseSetEntitiy.fromJson(jsonDecode(value));
      setState(() {
        if(item.code==200){
          _texts.add("基地信息："+item.data!.company.toString());
        }else{
          _texts.add("查询基地信息 getBaseSettings 接口异常：${item.message}");
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Column(
        children: [
          // 上半部分
          Container(
            padding: EdgeInsets.only(top: statusBarHeight,left: 10,right: 10),
            color: Colors.blueAccent, // 设置背景颜色
            child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/common_icon_main_page.png',
                    width: 30, // 设置图片宽度
                    height: 30, // 设置图片高度
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(widget.title ,style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),
                  Spacer(), // 这个组件会占据尽可能多的空间   'assets/images/common_icon_head_portrait.png',
                  IconButton(
                    icon: Image.asset(
                      Assets.imagesCommonIconHeadPortrait,
                      width: 30,
                      height: 30,
                    ),
                    key: _buttonKey,
                    onPressed: () {
                      showUserOverlay(context);
                      // 在这里执行你需要的操作
                    },
                  )
                ]
            ),
          ),
          // 轮播图片
          Container(
            color: Colors.white, // 设置背景颜色
            child: CarouselSlider(
                options: CarouselOptions(
                  height: 30,
                  scrollDirection: Axis.vertical, // 垂直方向
                  autoPlay: true, // 自动播放
                  autoPlayInterval: Duration(seconds: 2), // 自动播放间隔
                  viewportFraction: 1.0, // 占满视图
                ),
                items: _texts.map((text) {
                  return Align(
                    alignment: Alignment.centerLeft, // 左对齐
                    child: Padding(
                      padding: EdgeInsets.only(left: 16), // 添加左边距
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }).toList()
            ),
          ),
        ],
      ),
    );
  }

  //弹窗显示个人中心内容
  void showUserOverlay(BuildContext context) {
    final overlay = Overlay.of(context);
    final renderBox = _buttonKey.currentContext!.findRenderObject() as RenderBox;
    final buttonPosition = renderBox.localToGlobal(Offset.zero); // 获取按钮的位置
    final buttonWidth = renderBox.size.width; // 获取按钮的宽度
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: buttonPosition.dy + renderBox.size.height, // 设置弹出框的 top 值为按钮底部
        // left: buttonPosition.dx + buttonWidth / 2 - 30, // 居中对齐，50 为弹窗宽度的一半
        left: buttonPosition.dx, // 居中对齐，50 为弹窗宽度的一半
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(20), // 圆角半径
            ),
            child: Text(
              _userName,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
    // 插入 Overlay
    overlay.insert(overlayEntry);
    // 延迟关闭 Overlay
    Future.delayed(const Duration(seconds: 1), () {
      overlayEntry.remove(); // 移除 Overlay
    });
  }
}