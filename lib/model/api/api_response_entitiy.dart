import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/model/api/api_response_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/model/api/api_response_entitiy.g.dart';

class ApiResponseEntitiy<T> {
	int? code;
	String? msg;
	String? message;
	T? data;

	ApiResponseEntitiy();

	factory ApiResponseEntitiy.fromJson(Map<String, dynamic> json) => $ApiResponseEntitiyFromJson<T>(json);

	Map<String, dynamic> toJson() => $ApiResponseEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ApiResponseData {
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

	ApiResponseData();

	factory ApiResponseData.fromJson(Map<String, dynamic> json) => $ApiResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $ApiResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}