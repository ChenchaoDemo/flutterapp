import 'package:hive_flutter/hive_flutter.dart';

class HiveUtils {
  // 用于存储Hive Box的实例
  static late Box _box;

  // 初始化 Hive
  static Future<void> initHive() async {
    // 初始化 Hive
    await Hive.initFlutter();

    // 打开一个Box
    _box = await Hive.openBox('myBox');
  }

  // 存储数据
  static Future<void> putData(String key, dynamic value) async {
    await _box.put(key, value);
  }

  // 获取数据
  static dynamic getData(String key) {
    return _box.get(key);
  }

  // 删除数据
  static Future<void> deleteData(String key) async {
    await _box.delete(key);
  }

  // 清空所有数据
  static Future<void> clearData() async {
    await _box.clear();
  }
}
