import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/user_search_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/user_search_entitiy.g.dart';

@JsonSerializable()
class UserSearchEntitiy {
	int? code;
	String? msg;
	String? message;
	UserSearchData? data;

	UserSearchEntitiy();

	factory UserSearchEntitiy.fromJson(Map<String, dynamic> json) => $UserSearchEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $UserSearchEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserSearchData {
	List<UserSearchDataData>? data;
	int? count;

	UserSearchData();

	factory UserSearchData.fromJson(Map<String, dynamic> json) => $UserSearchDataFromJson(json);

	Map<String, dynamic> toJson() => $UserSearchDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserSearchDataData {
	int? id;
	int? farmerId;
	int? salesmanId;
	String? userCode;
	String? loginName;
	String? phone;
	String? userPwd;
	int? userType;
	String? companyName;
	String? idNumber;
	String? certificateNumber;
	String? realName;
	String? papersFrontImg;
	dynamic papersAfterImg;
	dynamic proviceId;
	dynamic proviceName;
	dynamic cityId;
	dynamic cityName;
	dynamic countiesId;
	dynamic countiesName;
	String? address;
	int? merchantState;
	dynamic twoPreservationId;
	String? email;
	dynamic openingBank;
	dynamic bankAccount;
	dynamic headPortrait;
	int? authenticationState;
	String? truePath;
	int? isWhetherAssure;
	String? companyAddress;
	dynamic companyType;
	String? companyInfo;
	int? delStatus;
	String? createTime;
	String? updateTime;
	String? standby1;
	String? standby3;
	String? standby4;
	String? standby5;

	UserSearchDataData();

	factory UserSearchDataData.fromJson(Map<String, dynamic> json) => $UserSearchDataDataFromJson(json);

	Map<String, dynamic> toJson() => $UserSearchDataDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}