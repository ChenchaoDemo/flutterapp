import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/user_login_entitiy.dart';

UserLoginEntitiy $UserLoginEntitiyFromJson(Map<String, dynamic> json) {
  final UserLoginEntitiy userLoginEntitiy = UserLoginEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    userLoginEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    userLoginEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    userLoginEntitiy.message = message;
  }
  final UserLoginData? data = jsonConvert.convert<UserLoginData>(json['data']);
  if (data != null) {
    userLoginEntitiy.data = data;
  }
  return userLoginEntitiy;
}

Map<String, dynamic> $UserLoginEntitiyToJson(UserLoginEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension UserLoginEntitiyExtension on UserLoginEntitiy {
  UserLoginEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    UserLoginData? data,
  }) {
    return UserLoginEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

UserLoginData $UserLoginDataFromJson(Map<String, dynamic> json) {
  final UserLoginData userLoginData = UserLoginData();
  final dynamic id = json['id'];
  if (id != null) {
    userLoginData.id = id;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    userLoginData.createTime = createTime;
  }
  final dynamic createUserId = json['createUserId'];
  if (createUserId != null) {
    userLoginData.createUserId = createUserId;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    userLoginData.updateTime = updateTime;
  }
  final dynamic updateUserId = json['updateUserId'];
  if (updateUserId != null) {
    userLoginData.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    userLoginData.isDeleted = isDeleted;
  }
  final dynamic address = json['address'];
  if (address != null) {
    userLoginData.address = address;
  }
  final dynamic password = json['password'];
  if (password != null) {
    userLoginData.password = password;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    userLoginData.phone = phone;
  }
  final dynamic remark = json['remark'];
  if (remark != null) {
    userLoginData.remark = remark;
  }
  final String? roles = jsonConvert.convert<String>(json['roles']);
  if (roles != null) {
    userLoginData.roles = roles;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    userLoginData.userName = userName;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userLoginData.name = name;
  }
  final dynamic baseStationId = json['baseStationId'];
  if (baseStationId != null) {
    userLoginData.baseStationId = baseStationId;
  }
  final dynamic cardNum = json['cardNum'];
  if (cardNum != null) {
    userLoginData.cardNum = cardNum;
  }
  final dynamic platformUserId = json['platformUserId'];
  if (platformUserId != null) {
    userLoginData.platformUserId = platformUserId;
  }
  final String? idNumber = jsonConvert.convert<String>(json['idNumber']);
  if (idNumber != null) {
    userLoginData.idNumber = idNumber;
  }
  final dynamic userType = json['userType'];
  if (userType != null) {
    userLoginData.userType = userType;
  }
  final dynamic certificateNumber = json['certificateNumber'];
  if (certificateNumber != null) {
    userLoginData.certificateNumber = certificateNumber;
  }
  final dynamic mobile = json['mobile'];
  if (mobile != null) {
    userLoginData.mobile = mobile;
  }
  final String? loginTime = jsonConvert.convert<String>(json['loginTime']);
  if (loginTime != null) {
    userLoginData.loginTime = loginTime;
  }
  final dynamic base = json['base'];
  if (base != null) {
    userLoginData.base = base;
  }
  return userLoginData;
}

Map<String, dynamic> $UserLoginDataToJson(UserLoginData entity) {
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

extension UserLoginDataExtension on UserLoginData {
  UserLoginData copyWith({
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
    return UserLoginData()
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