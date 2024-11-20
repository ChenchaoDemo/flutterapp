import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class HttpService {

  static const baseUrl = "http://grain.ahyicun.cn/api/";
  static const successCode = 200;



  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;
  late Dio _dio;
  final Logger _logger = Logger();

  // 缓存容器：存储请求头信息
  static final Map<String, String> _cachedHeaders = {};


  HttpService._internal() {
    // 初始化 Dio
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl, // 替换为你的基地址
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      responseType: ResponseType.plain,
    ));
    // 添加拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // 在请求拦截器中设置 Host 请求头  下面这个请求头在当前环境中必须传递,否则服务无响应
        options.headers['Host'] = 'grain.ahyicun.cn';  // 设置 Host 请求头
        options.headers['appname'] = 'outflow';
        options.headers['appversion'] = '1.2.0';
        _logger.i('Request [${options.method}] -> ${options.baseUrl}${options.path}\nHeaders: ${options.headers}\nData: ${options.data}');
        // 使用缓存的请求头
        if (_cachedHeaders.isNotEmpty) {
          options.headers.addAll(_cachedHeaders);
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        //绑定token
        if(response.realUri.toString().contains('user/login')){
          setCachedHeaders({'Authorization': '${response.headers.value('authorization')}'});
        }
        _logger.i('Response [${response.statusCode}] -> ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        _logger.e('Error: ${e.response?.statusCode} -> ${e.message}');
        return handler.next(e);
      },
    ));
  }


  /// 设置缓存的请求头
  void setCachedHeaders(Map<String, String> headers) {
    _cachedHeaders.addAll(headers);
    _logger.i('Cached Headers Set: $headers');
  }
  /// 清除缓存的请求头
  void clearCachedHeaders() {
    _cachedHeaders.clear();
    _logger.i('Cached Headers Cleared');
  }

  /// 1. GET 请求并传递参数
  Future<dynamic> get(String path, {Map<String, dynamic>? params}) async {
    try {
      Response response = await _dio.get(path, queryParameters: params);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }
  /// 2. POST 请求传递queryParameters参数键
  /// 发送 POST 请求并传递 queryParameters
  Future<dynamic> postWithQueryParams(String path, {required Map<String, dynamic> queryParams}) async {
    try {
      // 发起 POST 请求并传递查询参数
      Response response = await _dio.post(
        path, // 请求路径
        queryParameters: queryParams, // 查询参数
      );
      // 返回响应数据
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// 2. POST 请求传递表单数据
  Future<dynamic> postForm(String path, {required Map<String, dynamic> params}) async {
    try {
      Response response = await _dio.post(
        path,
        data: FormData.fromMap(params),
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// 3. POST 请求传递 JSON
  Future<dynamic> postJson(String path, {required Map<String, dynamic> data}) async {
    try {
      Response response = await _dio.post(
        path,
        data: data,
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// 4. POST 请求同时传递queryParameters参数和 JSON
  Future<dynamic> postWithParamsAndJson(String path,
      {required Map<String, dynamic> params, required Map<String, dynamic> json}) async {
    try {
      Response response = await _dio.post(
        path,
        queryParameters: params,
        data: json,
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// 5. 上传文件
  Future<dynamic> uploadFile(String path, {required Map<String, dynamic> params, required String filePath, String fileKey = 'file'}) async {
    try {
      var formData = FormData.fromMap({
        ...params,
        fileKey: await MultipartFile.fromFile(filePath),
      });
      Response response = await _dio.post(path, data: formData);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// 6. 下载文件
  Future<void> downloadFile(String url, String savePath) async {
    try {
      await _dio.download(url, savePath, onReceiveProgress: (received, total) {
        if (total != -1) {
          _logger.i("Download Progress: ${(received / total * 100).toStringAsFixed(0)}%");
        }
      });
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }


  void _handleError(DioException e) {
    if (e.response != null) {
      _logger.e(
          'HTTP Error: ${e.response?.statusCode}, ${e.response?.data}');
    } else {
      _logger.e('HTTP Error: ${e.message}');
    }
  }
}
