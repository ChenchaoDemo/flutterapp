import 'package:flutterapp/generated/json/base/json_field.dart';
import 'package:flutterapp/generated/json/sell_trade_detail_entitiy.g.dart';
import 'dart:convert';
export 'package:flutterapp/generated/json/sell_trade_detail_entitiy.g.dart';

@JsonSerializable()
class SellTradeDetailEntitiy {
	int? code;
	String? msg;
	String? message;
	SellTradeDetailData? data;

	SellTradeDetailEntitiy();

	factory SellTradeDetailEntitiy.fromJson(Map<String, dynamic> json) => $SellTradeDetailEntitiyFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailEntitiyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailData {
	dynamic id;
	dynamic createTime;
	dynamic createUserId;
	dynamic updateTime;
	dynamic updateUserId;
	bool? isDeleted;
	String? cardNum;
	dynamic orderId;
	dynamic orderFlowNodeId;
	dynamic sellOrderId;
	dynamic verifyType;
	dynamic verifyItem;
	int? source;
	dynamic sampleCheckRecord;
	dynamic order;
	double? roughWeight;
	double? netWeight;
	String? carNumber;
	double? tare;
	dynamic impurity;
	dynamic weightNet;
	dynamic bargainInfo;
	dynamic subtotal;
	SellTradeDetailDataCustomer? customer;
	SellTradeDetailDataDriver? driver;
	SellTradeDetailDataBaseStation? baseStation;
	dynamic sellOrder;
	SellTradeDetailDataGrainSalesOutWarehouseDto? grainSalesOutWarehouseDto;
	dynamic warehouseName;
	dynamic positionName;
	String? operatorName;
	dynamic baseRemark;
	int? outOrderStatus;
	SellTradeDetailDataInWeightRecordDto? inWeightRecordDto;
	SellTradeDetailDataOutWeightRecordDto? outWeightRecordDto;

	SellTradeDetailData();

	factory SellTradeDetailData.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataCustomer {
	int? id;
	String? createTime;
	int? createUserId;
	String? updateTime;
	int? updateUserId;
	bool? isDeleted;
	String? address;
	String? mobile;
	String? name;
	String? remark;
	String? idCard;
	dynamic crop;
	dynamic area;
	dynamic kinsfolk;
	dynamic kinsfolkMobile;
	dynamic plantingAddress;
	int? platformUserId;
	int? userType;
	String? certificateNumber;
	String? standby1;

	SellTradeDetailDataCustomer();

	factory SellTradeDetailDataCustomer.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataCustomerFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataCustomerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataDriver {
	int? id;
	String? createTime;
	int? createUserId;
	String? updateTime;
	int? updateUserId;
	bool? isDeleted;
	String? address;
	String? mobile;
	String? name;
	dynamic remark;
	String? idCard;
	dynamic carNumber;
	dynamic vehicleModel;
	dynamic registerTonnage;
	int? platformUserId;
	int? userType;
	String? certificateNumber;
	String? standby1;

	SellTradeDetailDataDriver();

	factory SellTradeDetailDataDriver.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataDriverFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataDriverToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataBaseStation {
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
	dynamic baseSettings;

	SellTradeDetailDataBaseStation();

	factory SellTradeDetailDataBaseStation.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataBaseStationFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataBaseStationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataGrainSalesOutWarehouseDto {
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
	int? grossWeight;
	int? tareWeight;
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
	dynamic netWeightOfString;
	String? categoryName;
	dynamic warehouseName;
	dynamic positionName;
	String? totalIndicatedWeight;
	String? totalIndicatedWeightOfTon;
	String? errorWeight;
	List<SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList>? grainSalesOutWarehouseDetailDtoList;

	SellTradeDetailDataGrainSalesOutWarehouseDto();

	factory SellTradeDetailDataGrainSalesOutWarehouseDto.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataGrainSalesOutWarehouseDtoFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataGrainSalesOutWarehouseDtoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList {
	int? id;
	dynamic status;
	int? categoryId;
	String? categoryName;
	int? categoryType;
	double? orderCategoryPrice;
	double? price;
	double? costPrice;
	int? specificationsType;
	double? specifications;
	int? numberBags;
	int? grainSalesOutWarehouseId;
	double? indicatedWeight;
	int? warehouseId;
	int? positionId;
	String? createBy;
	String? updatedBy;
	String? createTime;
	String? updateTime;
	String? warehouseName;
	String? positionName;
	dynamic number;
	double? totalPrice;
	double? priceOfJin;
	double? riskPrice;

	SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList();

	factory SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoListFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataInWeightRecordDto {
	int? id;
	String? createTime;
	int? createUserId;
	dynamic updateTime;
	dynamic updateUserId;
	bool? isDeleted;
	dynamic equipmentNumber;
	int? orderFlowNodeId;
	dynamic orderId;
	int? type;
	String? unit;
	int? userId;
	double? weight;
	String? orderNo;
	String? carNumber;
	dynamic plateNumber;
	int? sellOrderId;
	dynamic outWeightFileIds;
	List<int>? inWeightFileIds;

	SellTradeDetailDataInWeightRecordDto();

	factory SellTradeDetailDataInWeightRecordDto.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataInWeightRecordDtoFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataInWeightRecordDtoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SellTradeDetailDataOutWeightRecordDto {
	int? id;
	String? createTime;
	int? createUserId;
	dynamic updateTime;
	dynamic updateUserId;
	bool? isDeleted;
	dynamic equipmentNumber;
	int? orderFlowNodeId;
	dynamic orderId;
	int? type;
	String? unit;
	int? userId;
	double? weight;
	String? orderNo;
	String? carNumber;
	dynamic plateNumber;
	int? sellOrderId;
	dynamic outWeightFileIds;
	dynamic inWeightFileIds;

	SellTradeDetailDataOutWeightRecordDto();

	factory SellTradeDetailDataOutWeightRecordDto.fromJson(Map<String, dynamic> json) => $SellTradeDetailDataOutWeightRecordDtoFromJson(json);

	Map<String, dynamic> toJson() => $SellTradeDetailDataOutWeightRecordDtoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}