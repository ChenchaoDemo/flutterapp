import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/sell_out_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/sell_out_entitiy.g.dart';

@JsonSerializable()
class SellOutEntitiy {
	int? code;
	String? msg;
	String? message;
	SellOutData? data;

	SellOutEntitiy();

	factory SellOutEntitiy.fromJson(Map<String, dynamic> json) => $SellOutEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $SellOutEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellOutData {
	List<SellOutDataData>? data;
	int? count;

	SellOutData();

	factory SellOutData.fromJson(Map<String, dynamic> json) => $SellOutDataFromJson(json);

	Map<String, dynamic> toJson() => $SellOutDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellOutDataData {
	int? id;
	dynamic code;
	int? outWarehouseType;
	String? currentNode;
	dynamic contractId;
	dynamic categoryId;
	dynamic pdfPathForPay;
	String? pdfPathForPrint;
	String? number;
	int? customerId;
	int? driverId;
	int? cardId;
	dynamic positionId;
	dynamic warehouseId;
	int? baseId;
	String? baseName;
	double? takeNumber;
	dynamic productNumber;
	dynamic stockId;
	int? status;
	dynamic terminationReason;
	dynamic signatureInfo;
	dynamic operationRecordInfo;
	dynamic remark;
	double? grossWeight;
	double? tareWeight;
	int? netWeight;
	dynamic price;
	double? money;
	String? reportTime;
	int? payType;
	int? payStatus;
	dynamic tradeNo;
	dynamic invoiceInfo;
	int? invoiceStatus;
	dynamic cfcaInfo;
	int? ncStatus;
	dynamic ncInfo;
	String? createBy;
	String? updatedBy;
	String? createTime;
	String? updateTime;
	dynamic adjustmentRecord;
	int? createUserId;
	dynamic planId;
	dynamic outOrderManuaId;
	dynamic customerName;
	dynamic customerPhone;
	dynamic driverName;
	dynamic driverPhone;
	dynamic carNumber;
	dynamic cardNum;
	String? netWeightOfString;
	String? categoryName;
	dynamic warehouseName;
	dynamic positionName;
	dynamic totalIndicatedWeight;
	dynamic totalIndicatedWeightOfTon;
	dynamic errorWeight;
	dynamic grainSalesOutWarehouseDetailDtoList;

	SellOutDataData();

	factory SellOutDataData.fromJson(Map<String, dynamic> json) => $SellOutDataDataFromJson(json);

	Map<String, dynamic> toJson() => $SellOutDataDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}