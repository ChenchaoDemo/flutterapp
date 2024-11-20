import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/out_storage_weight_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/out_storage_weight_entitiy.g.dart';

@JsonSerializable()
class OutStorageWeightEntitiy {
	int? code;
	String? msg;
	String? message;
	OutStorageWeightData? data;

	OutStorageWeightEntitiy();

	factory OutStorageWeightEntitiy.fromJson(Map<String, dynamic> json) => $OutStorageWeightEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $OutStorageWeightEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class OutStorageWeightData {
	String? productWeightToday;  //成品
	String? price;   //原粮价格
	String? productPriceToday;   //成品 价格
	String? weight;    //原粮

	OutStorageWeightData();

	factory OutStorageWeightData.fromJson(Map<String, dynamic> json) => $OutStorageWeightDataFromJson(json);

	Map<String, dynamic> toJson() => $OutStorageWeightDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}