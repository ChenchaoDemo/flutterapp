import 'package:flutter/material.dart';

class SalesFlowNodeType {
  final String key;
  final String value;
  final String icon; // 图标路径
  final int order;

  // 构造函数
  const SalesFlowNodeType(this.key, this.value, this.icon, this.order);

  // 枚举实例
  static const SalesFlowNodeType QUEUING = SalesFlowNodeType(
      "QUEUING", "排队制卡", "assets/images/home_icon_queue_make_card.png", 1);
  static const SalesFlowNodeType WEIGHING_IN = SalesFlowNodeType(
      "WEIGHING_IN", "空车入磅", "assets/images/home_icon_empty_truck_in_pound.png", 2);
  static const SalesFlowNodeType WEIGHING_OUT = SalesFlowNodeType(
      "WEIGHING_OUT", "装车出磅", "assets/images/home_icon_load_truck_out_pound.png", 3);
  static const SalesFlowNodeType PRODUCT_SELECT = SalesFlowNodeType(
      "PRODUCT_SELECT", "商品选择", "assets/images/home_production_finished_goods_statistics.png", 4);
  static const SalesFlowNodeType TRADE_REPORT = SalesFlowNodeType(
      "TRADE_REPORT", "交易报告", "assets/images/home_icon_trade_report.png", 5);

  static const SalesFlowNodeType HISTORY_OUT_WAREHOUSE_RECEIPT =
  SalesFlowNodeType("HISTORY_OUT_WAREHOUSE_RECEIPT", "历史出库单",
      "assets/images/home_icon_history_out_warehouse_receipt.png", 6);
  static const SalesFlowNodeType HISTORY_TRADE_RECEIPT = SalesFlowNodeType(
      "HISTORY_TRADE_RECEIPT", "历史交易单",
      "assets/images/home_icon_history_trade_receipt.png", 7);
  static const SalesFlowNodeType LOGOUT_FLOW_CARD = SalesFlowNodeType(
      "LOGOUT_FLOW_CARD", "注销流程卡", "assets/images/home_icon_logout_process_card.png", 8);
  static const SalesFlowNodeType INVENTORY_QUERY = SalesFlowNodeType(
      "INVENTORY_QUERY", "库存查询", "assets/images/home_icon_inventory_query.png", 9);
  static const SalesFlowNodeType VIEW_PLAN = SalesFlowNodeType(
      "VIEW_PLAN", "查看计划", "assets/images/home_icon_view_plan.png", 10);
  static const SalesFlowNodeType DATA_STATISTICS = SalesFlowNodeType(
      "DATA_STATISTICS", "数据统计", "assets/images/home_icon_data_statistics.png", 11);
  static const SalesFlowNodeType QUICK_REGISTRATION = SalesFlowNodeType(
      "QUICK_REGISTRATION", "快捷注册", "assets/images/home_icon_quick_registration.png", 12);
  static const SalesFlowNodeType HELP_CENTER = SalesFlowNodeType(
      "HELP_CENTER", "帮助中心", "assets/images/home_icon_help_center.png", 13);

  static List<SalesFlowNodeType> getProcessNodes() {
    return [
      QUEUING,
      WEIGHING_IN,
      WEIGHING_OUT,
      PRODUCT_SELECT,
      TRADE_REPORT,
    ];
  }
  static List<SalesFlowNodeType> getCommonNodes() {
    return [
      HISTORY_OUT_WAREHOUSE_RECEIPT,
      HISTORY_TRADE_RECEIPT,
      LOGOUT_FLOW_CARD,
      INVENTORY_QUERY,
      VIEW_PLAN,
      DATA_STATISTICS,
      QUICK_REGISTRATION,
      HELP_CENTER,
    ];
  }
  // 获取所有枚举项的值
  static const List<SalesFlowNodeType> values = [
    QUEUING,
    WEIGHING_IN,
    WEIGHING_OUT,
    PRODUCT_SELECT,
    TRADE_REPORT,
    HISTORY_OUT_WAREHOUSE_RECEIPT,
    HISTORY_TRADE_RECEIPT,
    LOGOUT_FLOW_CARD,
    INVENTORY_QUERY,
    VIEW_PLAN,
    DATA_STATISTICS,
    QUICK_REGISTRATION,
    HELP_CENTER,
  ];

  // 通过 key 查找对应的 value
  static String? getValue(String key) {
    for (var e in values) {
      if (e.key == key) {
        return e.value;
      }
    }
    return null;
  }

  // 通过 order 查找对应的枚举项
  static SalesFlowNodeType? getByOrder(int order) {
    for (var e in values) {
      if (e.order == order) {
        return e;
      }
    }
    return null;
  }
}
