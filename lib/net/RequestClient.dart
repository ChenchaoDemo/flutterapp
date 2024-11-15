

import 'package:dio/dio.dart';

class RequestConfig{

  static const baseUrl = "http://grain.ahyicun.cn/api/";
  static const successCode = 200;

}

RequestClient requestClient = RequestClient();

class RequestClient {

  late Dio _dio;

  RequestClient() {
    _dio = Dio(
        BaseOptions(baseUrl: RequestConfig.baseUrl, connectTimeout: Duration(seconds: 5),
          receiveTimeout: Duration(seconds: 3))
    );
  }
}

