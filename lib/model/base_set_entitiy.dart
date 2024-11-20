import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/base_set_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/base_set_entitiy.g.dart';

@JsonSerializable()
class BaseSetEntitiy {
	int? code;
	String? msg;
	String? message;
	BaseSetData? data;

	BaseSetEntitiy();

	factory BaseSetEntitiy.fromJson(Map<String, dynamic> json) => $BaseSetEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $BaseSetEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BaseSetData {
	int? id;
	String? createTime;
	int? createUserId;
	String? updateTime;
	int? updateUserId;
	bool? isDeleted;
	String? code;
	String? detailAddress;
	String? introdution;
	String? name;
	String? phone;
	String? responsePerson;
	String? company;
	String? status;
	int? cityCode;
	String? cityName;
	int? countyCode;
	String? countyName;
	int? provinceCode;
	String? provinceName;
	int? platformUserId;
	int? responsePersonPlatformUserId;
	int? baseFlowType;
	String? ncWarehouseCode;
	String? ncGroupCode;
	String? ncCompanyCode;
	String? ncDeptNo;
	String? ncDeptName;
	String? ncUserCode;
	String? ncRetailCode;
	String? ncUserbCode;
	String? abbr;
	int? sceneType;
	String? outWarehouseFlowType;
	List<BaseSetDataBaseSettings>? baseSettings;

	BaseSetData();

	factory BaseSetData.fromJson(Map<String, dynamic> json) => $BaseSetDataFromJson(json);

	Map<String, dynamic> toJson() => $BaseSetDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BaseSetDataBaseSettings {
	int? id;
	dynamic createTime;
	dynamic createUserId;
	String? updateTime;
	int? updateUserId;
	bool? isDeleted;
	bool? baseCapable;
	int? baseId;
	String? keyCode;
	String? name;
	String? remark;
	bool? status;
	String? value;
	String? valueType;
	int? type;

	BaseSetDataBaseSettings();

	factory BaseSetDataBaseSettings.fromJson(Map<String, dynamic> json) => $BaseSetDataBaseSettingsFromJson(json);

	Map<String, dynamic> toJson() => $BaseSetDataBaseSettingsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}