import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final Dio dio = Dio();
  // User? user;
  bool isLoading = false;

  // 请求用户数据
  Future<void> fetchUserData(String basecode, String username, String password ) async {
    isLoading = true;
    notifyListeners();

    try {
      var url = 'http://grain.ahyicun.cn/api/user/login';
      // 请求参数
      var data = {
        'username': '13866767287',
        'password': 'PIfUKFchKLnIEEY2yomCHjjaE1lcnmelz2zf3ri8O4ccyFmT%2FfWzH84d8PZxRS8icKhUIM%2Fl%2B9SgIUKOmtzca6u%2B2lRUlUXolxOST6IEPhhiSYBHSTmB4zYXhAKjzVHspOGBzi%2FxCap94qqYBTtr89Z8iKM2x7UfUt%2FKi1Ek3vU%3D',
        'baseCode': '100000',

      };
      try {
        // 发送 POST 请求
        Response response = await dio.post(url, data: data);
        // 请求成功的回调
        if (response.statusCode == 200) {
          print('Response data: ${response.data}');
        } else {
          print('Request failed with status: ${response.statusCode}');
        }
      } catch (e) {
        // 捕获异常
        print('Error: $e');
      }

      // Response response = await dio.get('https://api.example.com/user');
      // user = User.fromJson(response.data);  // 假设接口返回的是 User 数据
    } catch (e) {
      print('Error fetching user data: $e');
    } finally {
      isLoading = false;
      notifyListeners();  // 通知 UI 更新状态
    }
  }
}
