import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/user_login_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/user_login_entitiy.g.dart';

@JsonSerializable()
class UserLoginEntitiy {
	int? code;
	String? msg;
	String? message;
	UserLoginData? data;

	UserLoginEntitiy();

	factory UserLoginEntitiy.fromJson(Map<String, dynamic> json) => $UserLoginEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $UserLoginEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserLoginData {
	dynamic id;
	dynamic createTime;
	dynamic createUserId;
	dynamic updateTime;
	dynamic updateUserId;
	bool? isDeleted;
	dynamic address;
	dynamic password;
	String? phone;
	dynamic remark;
	String? roles;
	String? userName;
	String? name;
	dynamic baseStationId;
	dynamic cardNum;
	dynamic platformUserId;
	String? idNumber;
	dynamic userType;
	dynamic certificateNumber;
	dynamic mobile;
	String? loginTime;
	dynamic base;

	UserLoginData();

	factory UserLoginData.fromJson(Map<String, dynamic> json) => $UserLoginDataFromJson(json);

	Map<String, dynamic> toJson() => $UserLoginDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}