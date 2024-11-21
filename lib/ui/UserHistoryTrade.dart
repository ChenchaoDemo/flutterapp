// 文件名: UserHistoryTrade
// 作者: A
// 创建日期: 2024-11-20
// 描述: 用户历史交易数据

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/sell_out_entitiy.dart';
import 'package:get/get.dart';

import '../model/user_search_entitiy.dart';
import '../net/HttpService.dart';
import '../utils/ComputeUtils.dart';
import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';

class UserHistoryTrade extends StatefulWidget {
  const UserHistoryTrade({Key? key}) : super(key: key);

  @override
  _UserHistoryTradeState createState() => _UserHistoryTradeState();
}

class _UserHistoryTradeState extends State<UserHistoryTrade> {

  List<SellOutDataData> _data = []; // 数据列表
  bool _isLoading = false; // 是否正在加载
  bool _hasMore = true; // 是否还有更多数据
  int _page = 1; // 当前页数
  int _pageSize = 20; // 每页显示的数量
  int _count=0;//总数
  final ScrollController _scrollController = ScrollController(); // 滚动控制器
  String _searchValue = ""; // 用户手机号

  @override
  void initState() {
    super.initState();
    _fetchData(); // 加载第一页数据

    // 监听滚动事件，触发上拉加载更多
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // 如果当前没有在加载并且还有更多数据，则加载更多
        //根据总数判断是否还有下一页
        setState(() {
          if(_count<=_pageSize*_page){
            _hasMore = false; // 没有更多数据
          }
        });
        if (!_isLoading && _hasMore) {
          _fetchData();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =Get.arguments;
    final String message = args['title'] ?? '';
    UserSearchDataData item= args['item'] ?? UserSearchDataData();
    _searchValue=item.phone ?? '';
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text('客户信息',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text('买家',textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 2,
                child: Text(item.address ?? '',textAlign: TextAlign.center),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Text(ComputeUtils.formatPhoneNumber(item.phone ?? '',),textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('交易信息',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 水平方向居中
            crossAxisAlignment: CrossAxisAlignment.center, // 垂直方向居中
            children: [
              Expanded(
                flex: 1,
                child: Text("商品信息",textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("重量(公斤)",textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("金额(元)",textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("下单时间",textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("状态",textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("操作",textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _onRefresh, // 下拉刷新
              child: ListView.builder(
                shrinkWrap: true, // 让 ListView 高度适配内容
                controller: _scrollController, // 滚动控制器
                itemCount: _data.length + 1,   // 数据项数量 + 1 作为加载更多的占位符
                itemBuilder: (context, index) {
                  // 判断是否是加载更多的占位符
                  if (index == _data.length) {
                    // 加载更多占位符
                    return _isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : (!_hasMore
                        ? const Center(child: Text('没有更多数据'))
                        : const SizedBox.shrink());
                  }
                  final item=_data[index];

                  // 将子项抽取为独立组件
                  return _ListItem(
                    item: item,
                    index: index,
                    onTap: () => ToastUtils.showBottom('查看详情'),
                  );
                },
              ),
            )
          )
        ]),
      ),
    );
  }



  Future<void> _fetchData() async {
    if (_isLoading) return; // 防止重复请求
    setState(() {
      _isLoading = true; // 设置为加载中
    });
    try {
      await HttpService().postWithQueryParams('sell/getOutOrderListPage',queryParams: {
        'searchValue': _searchValue,
        'page': _page,
        'pageSize': _pageSize,
      }).then((value) {
        SellOutEntitiy item=SellOutEntitiy.fromJson(jsonDecode(value));
        if(item.code==200) {
          setState(() {
            _count=item.data?.count ?? 0;
            if (item.data?.count == 0) {
              _hasMore = false; // 没有更多数据
            } else {
              _data.addAll(item.data?.data as Iterable<SellOutDataData>); // 添加新数据到列表
              _page++; // 增加页数\
            }
          });
        }
      });
    } catch (e) {
      ToastUtils.showBottom("加载失败");
    }finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 下拉刷新
  Future<void> _onRefresh() async {
    setState(() {
      _data.clear(); // 清空当前数据
      _page = 1; // 重置页数
      _hasMore = true; // 重置是否还有更多数据
    });
    // 加载数据
    await _fetchData();
  }


  @override
  void dispose() {
    _scrollController.dispose(); // 释放控制器
    super.dispose();
  }
}

// 抽取为子组件
class _ListItem extends StatelessWidget {
  final dynamic item;
  final int index;
  final VoidCallback onTap;

  const _ListItem({
    Key? key,
    required this.item,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isEven ? Colors.grey[200] : Colors.white, // 偶数行背景
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5), // 添加子项间距
      child: Row(
        children: [
          _buildText(item?.categoryName ?? '', flex: 1),
          _buildText(item?.netWeightOfString ?? '', flex: 1),
          _buildText(item?.money?.toString() ?? '', flex: 1),
          _buildText(item?.updateTime ?? '', flex: 1),
          _buildText(
            item?.status == 4
                ? '待回款'
                : item?.status == 6
                ? '交易完成'
                : '',
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: onTap,
              child: const Text('查看详情', style: TextStyle(color: Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }

  // 渲染简化方法
  Widget _buildText(String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis, // 超出部分省略号
      ),
    );
  }
}

