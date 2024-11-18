import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/api/api_response_entitiy.dart';

ApiResponseEntitiy<T> $ApiResponseEntitiyFromJson<T>(Map<String, dynamic> json) {
  final ApiResponseEntitiy<T> apiResponseEntitiy = ApiResponseEntitiy<T>();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    apiResponseEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    apiResponseEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    apiResponseEntitiy.message = message;
  }
  final T? data = json['data'];
  if (data != null) {
    apiResponseEntitiy.data = data;
  }
  return apiResponseEntitiy;
}

Map<String, dynamic> $ApiResponseEntitiyToJson(ApiResponseEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data;
  return data;
}

extension ApiResponseEntitiyExtension on ApiResponseEntitiy {
  ApiResponseEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    dynamic data,
  }) {
    return ApiResponseEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

ApiResponseData $ApiResponseDataFromJson(Map<String, dynamic> json) {
  final ApiResponseData apiResponseData = ApiResponseData();
  final dynamic id = json['id'];
  if (id != null) {
    apiResponseData.id = id;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    apiResponseData.createTime = createTime;
  }
  final dynamic createUserId = json['createUserId'];
  if (createUserId != null) {
    apiResponseData.createUserId = createUserId;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    apiResponseData.updateTime = updateTime;
  }
  final dynamic updateUserId = json['updateUserId'];
  if (updateUserId != null) {
    apiResponseData.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    apiResponseData.isDeleted = isDeleted;
  }
  final dynamic address = json['address'];
  if (address != null) {
    apiResponseData.address = address;
  }
  final dynamic password = json['password'];
  if (password != null) {
    apiResponseData.password = password;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    apiResponseData.phone = phone;
  }
  final dynamic remark = json['remark'];
  if (remark != null) {
    apiResponseData.remark = remark;
  }
  final String? roles = jsonConvert.convert<String>(json['roles']);
  if (roles != null) {
    apiResponseData.roles = roles;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    apiResponseData.userName = userName;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    apiResponseData.name = name;
  }
  final dynamic baseStationId = json['baseStationId'];
  if (baseStationId != null) {
    apiResponseData.baseStationId = baseStationId;
  }
  final dynamic cardNum = json['cardNum'];
  if (cardNum != null) {
    apiResponseData.cardNum = cardNum;
  }
  final dynamic platformUserId = json['platformUserId'];
  if (platformUserId != null) {
    apiResponseData.platformUserId = platformUserId;
  }
  final String? idNumber = jsonConvert.convert<String>(json['idNumber']);
  if (idNumber != null) {
    apiResponseData.idNumber = idNumber;
  }
  final dynamic userType = json['userType'];
  if (userType != null) {
    apiResponseData.userType = userType;
  }
  final dynamic certificateNumber = json['certificateNumber'];
  if (certificateNumber != null) {
    apiResponseData.certificateNumber = certificateNumber;
  }
  final dynamic mobile = json['mobile'];
  if (mobile != null) {
    apiResponseData.mobile = mobile;
  }
  final String? loginTime = jsonConvert.convert<String>(json['loginTime']);
  if (loginTime != null) {
    apiResponseData.loginTime = loginTime;
  }
  final dynamic base = json['base'];
  if (base != null) {
    apiResponseData.base = base;
  }
  return apiResponseData;
}

Map<String, dynamic> $ApiResponseDataToJson(ApiResponseData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['address'] = entity.address;
  data['password'] = entity.password;
  data['phone'] = entity.phone;
  data['remark'] = entity.remark;
  data['roles'] = entity.roles;
  data['userName'] = entity.userName;
  data['name'] = entity.name;
  data['baseStationId'] = entity.baseStationId;
  data['cardNum'] = entity.cardNum;
  data['platformUserId'] = entity.platformUserId;
  data['idNumber'] = entity.idNumber;
  data['userType'] = entity.userType;
  data['certificateNumber'] = entity.certificateNumber;
  data['mobile'] = entity.mobile;
  data['loginTime'] = entity.loginTime;
  data['base'] = entity.base;
  return data;
}

extension ApiResponseDataExtension on ApiResponseData {
  ApiResponseData copyWith({
    dynamic id,
    dynamic createTime,
    dynamic createUserId,
    dynamic updateTime,
    dynamic updateUserId,
    bool? isDeleted,
    dynamic address,
    dynamic password,
    String? phone,
    dynamic remark,
    String? roles,
    String? userName,
    String? name,
    dynamic baseStationId,
    dynamic cardNum,
    dynamic platformUserId,
    String? idNumber,
    dynamic userType,
    dynamic certificateNumber,
    dynamic mobile,
    String? loginTime,
    dynamic base,
  }) {
    return ApiResponseData()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..address = address ?? this.address
      ..password = password ?? this.password
      ..phone = phone ?? this.phone
      ..remark = remark ?? this.remark
      ..roles = roles ?? this.roles
      ..userName = userName ?? this.userName
      ..name = name ?? this.name
      ..baseStationId = baseStationId ?? this.baseStationId
      ..cardNum = cardNum ?? this.cardNum
      ..platformUserId = platformUserId ?? this.platformUserId
      ..idNumber = idNumber ?? this.idNumber
      ..userType = userType ?? this.userType
      ..certificateNumber = certificateNumber ?? this.certificateNumber
      ..mobile = mobile ?? this.mobile
      ..loginTime = loginTime ?? this.loginTime
      ..base = base ?? this.base;
  }
}