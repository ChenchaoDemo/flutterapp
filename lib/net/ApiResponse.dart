
class ApiResponse<T> {
  final int code;
  final String? msg;
  final String? message;
  final T data;

  ApiResponse({required this.code, required this.msg, required this.message, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return ApiResponse(
      code: json['code'],
      msg: json['msg'],
      message: json['message'],
      data: fromJsonT(json['data']),
    );
  }
}
