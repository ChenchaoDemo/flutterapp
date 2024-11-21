import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/sell_out_entitiy.dart';

SellOutEntitiy $SellOutEntitiyFromJson(Map<String, dynamic> json) {
  final SellOutEntitiy sellOutEntitiy = SellOutEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    sellOutEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    sellOutEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    sellOutEntitiy.message = message;
  }
  final SellOutData? data = jsonConvert.convert<SellOutData>(json['data']);
  if (data != null) {
    sellOutEntitiy.data = data;
  }
  return sellOutEntitiy;
}

Map<String, dynamic> $SellOutEntitiyToJson(SellOutEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension SellOutEntitiyExtension on SellOutEntitiy {
  SellOutEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    SellOutData? data,
  }) {
    return SellOutEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

SellOutData $SellOutDataFromJson(Map<String, dynamic> json) {
  final SellOutData sellOutData = SellOutData();
  final List<SellOutDataData>? data = (json['data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<SellOutDataData>(e) as SellOutDataData).toList();
  if (data != null) {
    sellOutData.data = data;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    sellOutData.count = count;
  }
  return sellOutData;
}

Map<String, dynamic> $SellOutDataToJson(SellOutData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  data['count'] = entity.count;
  return data;
}

extension SellOutDataExtension on SellOutData {
  SellOutData copyWith({
    List<SellOutDataData>? data,
    int? count,
  }) {
    return SellOutData()
      ..data = data ?? this.data
      ..count = count ?? this.count;
  }
}

SellOutDataData $SellOutDataDataFromJson(Map<String, dynamic> json) {
  final SellOutDataData sellOutDataData = SellOutDataData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellOutDataData.id = id;
  }
  final dynamic code = json['code'];
  if (code != null) {
    sellOutDataData.code = code;
  }
  final int? outWarehouseType = jsonConvert.convert<int>(json['outWarehouseType']);
  if (outWarehouseType != null) {
    sellOutDataData.outWarehouseType = outWarehouseType;
  }
  final String? currentNode = jsonConvert.convert<String>(json['currentNode']);
  if (currentNode != null) {
    sellOutDataData.currentNode = currentNode;
  }
  final dynamic contractId = json['contractId'];
  if (contractId != null) {
    sellOutDataData.contractId = contractId;
  }
  final dynamic categoryId = json['categoryId'];
  if (categoryId != null) {
    sellOutDataData.categoryId = categoryId;
  }
  final dynamic pdfPathForPay = json['pdfPathForPay'];
  if (pdfPathForPay != null) {
    sellOutDataData.pdfPathForPay = pdfPathForPay;
  }
  final String? pdfPathForPrint = jsonConvert.convert<String>(json['pdfPathForPrint']);
  if (pdfPathForPrint != null) {
    sellOutDataData.pdfPathForPrint = pdfPathForPrint;
  }
  final String? number = jsonConvert.convert<String>(json['number']);
  if (number != null) {
    sellOutDataData.number = number;
  }
  final int? customerId = jsonConvert.convert<int>(json['customerId']);
  if (customerId != null) {
    sellOutDataData.customerId = customerId;
  }
  final int? driverId = jsonConvert.convert<int>(json['driverId']);
  if (driverId != null) {
    sellOutDataData.driverId = driverId;
  }
  final int? cardId = jsonConvert.convert<int>(json['cardId']);
  if (cardId != null) {
    sellOutDataData.cardId = cardId;
  }
  final dynamic positionId = json['positionId'];
  if (positionId != null) {
    sellOutDataData.positionId = positionId;
  }
  final dynamic warehouseId = json['warehouseId'];
  if (warehouseId != null) {
    sellOutDataData.warehouseId = warehouseId;
  }
  final int? baseId = jsonConvert.convert<int>(json['baseId']);
  if (baseId != null) {
    sellOutDataData.baseId = baseId;
  }
  final String? baseName = jsonConvert.convert<String>(json['baseName']);
  if (baseName != null) {
    sellOutDataData.baseName = baseName;
  }
  final double? takeNumber = jsonConvert.convert<double>(json['takeNumber']);
  if (takeNumber != null) {
    sellOutDataData.takeNumber = takeNumber;
  }
  final dynamic productNumber = json['productNumber'];
  if (productNumber != null) {
    sellOutDataData.productNumber = productNumber;
  }
  final dynamic stockId = json['stockId'];
  if (stockId != null) {
    sellOutDataData.stockId = stockId;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sellOutDataData.status = status;
  }
  final dynamic terminationReason = json['terminationReason'];
  if (terminationReason != null) {
    sellOutDataData.terminationReason = terminationReason;
  }
  final dynamic signatureInfo = json['signatureInfo'];
  if (signatureInfo != null) {
    sellOutDataData.signatureInfo = signatureInfo;
  }
  final dynamic operationRecordInfo = json['operationRecordInfo'];
  if (operationRecordInfo != null) {
    sellOutDataData.operationRecordInfo = operationRecordInfo;
  }
  final dynamic remark = json['remark'];
  if (remark != null) {
    sellOutDataData.remark = remark;
  }
  final double? grossWeight = jsonConvert.convert<double>(json['grossWeight']);
  if (grossWeight != null) {
    sellOutDataData.grossWeight = grossWeight;
  }
  final double? tareWeight = jsonConvert.convert<double>(json['tareWeight']);
  if (tareWeight != null) {
    sellOutDataData.tareWeight = tareWeight;
  }
  final int? netWeight = jsonConvert.convert<int>(json['netWeight']);
  if (netWeight != null) {
    sellOutDataData.netWeight = netWeight;
  }
  final dynamic price = json['price'];
  if (price != null) {
    sellOutDataData.price = price;
  }
  final double? money = jsonConvert.convert<double>(json['money']);
  if (money != null) {
    sellOutDataData.money = money;
  }
  final String? reportTime = jsonConvert.convert<String>(json['reportTime']);
  if (reportTime != null) {
    sellOutDataData.reportTime = reportTime;
  }
  final int? payType = jsonConvert.convert<int>(json['payType']);
  if (payType != null) {
    sellOutDataData.payType = payType;
  }
  final int? payStatus = jsonConvert.convert<int>(json['payStatus']);
  if (payStatus != null) {
    sellOutDataData.payStatus = payStatus;
  }
  final dynamic tradeNo = json['tradeNo'];
  if (tradeNo != null) {
    sellOutDataData.tradeNo = tradeNo;
  }
  final dynamic invoiceInfo = json['invoiceInfo'];
  if (invoiceInfo != null) {
    sellOutDataData.invoiceInfo = invoiceInfo;
  }
  final int? invoiceStatus = jsonConvert.convert<int>(json['invoiceStatus']);
  if (invoiceStatus != null) {
    sellOutDataData.invoiceStatus = invoiceStatus;
  }
  final dynamic cfcaInfo = json['cfcaInfo'];
  if (cfcaInfo != null) {
    sellOutDataData.cfcaInfo = cfcaInfo;
  }
  final int? ncStatus = jsonConvert.convert<int>(json['ncStatus']);
  if (ncStatus != null) {
    sellOutDataData.ncStatus = ncStatus;
  }
  final dynamic ncInfo = json['ncInfo'];
  if (ncInfo != null) {
    sellOutDataData.ncInfo = ncInfo;
  }
  final String? createBy = jsonConvert.convert<String>(json['createBy']);
  if (createBy != null) {
    sellOutDataData.createBy = createBy;
  }
  final String? updatedBy = jsonConvert.convert<String>(json['updatedBy']);
  if (updatedBy != null) {
    sellOutDataData.updatedBy = updatedBy;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellOutDataData.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellOutDataData.updateTime = updateTime;
  }
  final dynamic adjustmentRecord = json['adjustmentRecord'];
  if (adjustmentRecord != null) {
    sellOutDataData.adjustmentRecord = adjustmentRecord;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellOutDataData.createUserId = createUserId;
  }
  final dynamic planId = json['planId'];
  if (planId != null) {
    sellOutDataData.planId = planId;
  }
  final dynamic outOrderManuaId = json['outOrderManuaId'];
  if (outOrderManuaId != null) {
    sellOutDataData.outOrderManuaId = outOrderManuaId;
  }
  final dynamic customerName = json['customerName'];
  if (customerName != null) {
    sellOutDataData.customerName = customerName;
  }
  final dynamic customerPhone = json['customerPhone'];
  if (customerPhone != null) {
    sellOutDataData.customerPhone = customerPhone;
  }
  final dynamic driverName = json['driverName'];
  if (driverName != null) {
    sellOutDataData.driverName = driverName;
  }
  final dynamic driverPhone = json['driverPhone'];
  if (driverPhone != null) {
    sellOutDataData.driverPhone = driverPhone;
  }
  final dynamic carNumber = json['carNumber'];
  if (carNumber != null) {
    sellOutDataData.carNumber = carNumber;
  }
  final dynamic cardNum = json['cardNum'];
  if (cardNum != null) {
    sellOutDataData.cardNum = cardNum;
  }
  final String? netWeightOfString = jsonConvert.convert<String>(json['netWeightOfString']);
  if (netWeightOfString != null) {
    sellOutDataData.netWeightOfString = netWeightOfString;
  }
  final String? categoryName = jsonConvert.convert<String>(json['categoryName']);
  if (categoryName != null) {
    sellOutDataData.categoryName = categoryName;
  }
  final dynamic warehouseName = json['warehouseName'];
  if (warehouseName != null) {
    sellOutDataData.warehouseName = warehouseName;
  }
  final dynamic positionName = json['positionName'];
  if (positionName != null) {
    sellOutDataData.positionName = positionName;
  }
  final dynamic totalIndicatedWeight = json['totalIndicatedWeight'];
  if (totalIndicatedWeight != null) {
    sellOutDataData.totalIndicatedWeight = totalIndicatedWeight;
  }
  final dynamic totalIndicatedWeightOfTon = json['totalIndicatedWeightOfTon'];
  if (totalIndicatedWeightOfTon != null) {
    sellOutDataData.totalIndicatedWeightOfTon = totalIndicatedWeightOfTon;
  }
  final dynamic errorWeight = json['errorWeight'];
  if (errorWeight != null) {
    sellOutDataData.errorWeight = errorWeight;
  }
  final dynamic grainSalesOutWarehouseDetailDtoList = json['grainSalesOutWarehouseDetailDtoList'];
  if (grainSalesOutWarehouseDetailDtoList != null) {
    sellOutDataData.grainSalesOutWarehouseDetailDtoList = grainSalesOutWarehouseDetailDtoList;
  }
  return sellOutDataData;
}

Map<String, dynamic> $SellOutDataDataToJson(SellOutDataData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['code'] = entity.code;
  data['outWarehouseType'] = entity.outWarehouseType;
  data['currentNode'] = entity.currentNode;
  data['contractId'] = entity.contractId;
  data['categoryId'] = entity.categoryId;
  data['pdfPathForPay'] = entity.pdfPathForPay;
  data['pdfPathForPrint'] = entity.pdfPathForPrint;
  data['number'] = entity.number;
  data['customerId'] = entity.customerId;
  data['driverId'] = entity.driverId;
  data['cardId'] = entity.cardId;
  data['positionId'] = entity.positionId;
  data['warehouseId'] = entity.warehouseId;
  data['baseId'] = entity.baseId;
  data['baseName'] = entity.baseName;
  data['takeNumber'] = entity.takeNumber;
  data['productNumber'] = entity.productNumber;
  data['stockId'] = entity.stockId;
  data['status'] = entity.status;
  data['terminationReason'] = entity.terminationReason;
  data['signatureInfo'] = entity.signatureInfo;
  data['operationRecordInfo'] = entity.operationRecordInfo;
  data['remark'] = entity.remark;
  data['grossWeight'] = entity.grossWeight;
  data['tareWeight'] = entity.tareWeight;
  data['netWeight'] = entity.netWeight;
  data['price'] = entity.price;
  data['money'] = entity.money;
  data['reportTime'] = entity.reportTime;
  data['payType'] = entity.payType;
  data['payStatus'] = entity.payStatus;
  data['tradeNo'] = entity.tradeNo;
  data['invoiceInfo'] = entity.invoiceInfo;
  data['invoiceStatus'] = entity.invoiceStatus;
  data['cfcaInfo'] = entity.cfcaInfo;
  data['ncStatus'] = entity.ncStatus;
  data['ncInfo'] = entity.ncInfo;
  data['createBy'] = entity.createBy;
  data['updatedBy'] = entity.updatedBy;
  data['createTime'] = entity.createTime;
  data['updateTime'] = entity.updateTime;
  data['adjustmentRecord'] = entity.adjustmentRecord;
  data['createUserId'] = entity.createUserId;
  data['planId'] = entity.planId;
  data['outOrderManuaId'] = entity.outOrderManuaId;
  data['customerName'] = entity.customerName;
  data['customerPhone'] = entity.customerPhone;
  data['driverName'] = entity.driverName;
  data['driverPhone'] = entity.driverPhone;
  data['carNumber'] = entity.carNumber;
  data['cardNum'] = entity.cardNum;
  data['netWeightOfString'] = entity.netWeightOfString;
  data['categoryName'] = entity.categoryName;
  data['warehouseName'] = entity.warehouseName;
  data['positionName'] = entity.positionName;
  data['totalIndicatedWeight'] = entity.totalIndicatedWeight;
  data['totalIndicatedWeightOfTon'] = entity.totalIndicatedWeightOfTon;
  data['errorWeight'] = entity.errorWeight;
  data['grainSalesOutWarehouseDetailDtoList'] = entity.grainSalesOutWarehouseDetailDtoList;
  return data;
}

extension SellOutDataDataExtension on SellOutDataData {
  SellOutDataData copyWith({
    int? id,
    dynamic code,
    int? outWarehouseType,
    String? currentNode,
    dynamic contractId,
    dynamic categoryId,
    dynamic pdfPathForPay,
    String? pdfPathForPrint,
    String? number,
    int? customerId,
    int? driverId,
    int? cardId,
    dynamic positionId,
    dynamic warehouseId,
    int? baseId,
    String? baseName,
    double? takeNumber,
    dynamic productNumber,
    dynamic stockId,
    int? status,
    dynamic terminationReason,
    dynamic signatureInfo,
    dynamic operationRecordInfo,
    dynamic remark,
    double? grossWeight,
    double? tareWeight,
    int? netWeight,
    dynamic price,
    double? money,
    String? reportTime,
    int? payType,
    int? payStatus,
    dynamic tradeNo,
    dynamic invoiceInfo,
    int? invoiceStatus,
    dynamic cfcaInfo,
    int? ncStatus,
    dynamic ncInfo,
    String? createBy,
    String? updatedBy,
    String? createTime,
    String? updateTime,
    dynamic adjustmentRecord,
    int? createUserId,
    dynamic planId,
    dynamic outOrderManuaId,
    dynamic customerName,
    dynamic customerPhone,
    dynamic driverName,
    dynamic driverPhone,
    dynamic carNumber,
    dynamic cardNum,
    String? netWeightOfString,
    String? categoryName,
    dynamic warehouseName,
    dynamic positionName,
    dynamic totalIndicatedWeight,
    dynamic totalIndicatedWeightOfTon,
    dynamic errorWeight,
    dynamic grainSalesOutWarehouseDetailDtoList,
  }) {
    return SellOutDataData()
      ..id = id ?? this.id
      ..code = code ?? this.code
      ..outWarehouseType = outWarehouseType ?? this.outWarehouseType
      ..currentNode = currentNode ?? this.currentNode
      ..contractId = contractId ?? this.contractId
      ..categoryId = categoryId ?? this.categoryId
      ..pdfPathForPay = pdfPathForPay ?? this.pdfPathForPay
      ..pdfPathForPrint = pdfPathForPrint ?? this.pdfPathForPrint
      ..number = number ?? this.number
      ..customerId = customerId ?? this.customerId
      ..driverId = driverId ?? this.driverId
      ..cardId = cardId ?? this.cardId
      ..positionId = positionId ?? this.positionId
      ..warehouseId = warehouseId ?? this.warehouseId
      ..baseId = baseId ?? this.baseId
      ..baseName = baseName ?? this.baseName
      ..takeNumber = takeNumber ?? this.takeNumber
      ..productNumber = productNumber ?? this.productNumber
      ..stockId = stockId ?? this.stockId
      ..status = status ?? this.status
      ..terminationReason = terminationReason ?? this.terminationReason
      ..signatureInfo = signatureInfo ?? this.signatureInfo
      ..operationRecordInfo = operationRecordInfo ?? this.operationRecordInfo
      ..remark = remark ?? this.remark
      ..grossWeight = grossWeight ?? this.grossWeight
      ..tareWeight = tareWeight ?? this.tareWeight
      ..netWeight = netWeight ?? this.netWeight
      ..price = price ?? this.price
      ..money = money ?? this.money
      ..reportTime = reportTime ?? this.reportTime
      ..payType = payType ?? this.payType
      ..payStatus = payStatus ?? this.payStatus
      ..tradeNo = tradeNo ?? this.tradeNo
      ..invoiceInfo = invoiceInfo ?? this.invoiceInfo
      ..invoiceStatus = invoiceStatus ?? this.invoiceStatus
      ..cfcaInfo = cfcaInfo ?? this.cfcaInfo
      ..ncStatus = ncStatus ?? this.ncStatus
      ..ncInfo = ncInfo ?? this.ncInfo
      ..createBy = createBy ?? this.createBy
      ..updatedBy = updatedBy ?? this.updatedBy
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..adjustmentRecord = adjustmentRecord ?? this.adjustmentRecord
      ..createUserId = createUserId ?? this.createUserId
      ..planId = planId ?? this.planId
      ..outOrderManuaId = outOrderManuaId ?? this.outOrderManuaId
      ..customerName = customerName ?? this.customerName
      ..customerPhone = customerPhone ?? this.customerPhone
      ..driverName = driverName ?? this.driverName
      ..driverPhone = driverPhone ?? this.driverPhone
      ..carNumber = carNumber ?? this.carNumber
      ..cardNum = cardNum ?? this.cardNum
      ..netWeightOfString = netWeightOfString ?? this.netWeightOfString
      ..categoryName = categoryName ?? this.categoryName
      ..warehouseName = warehouseName ?? this.warehouseName
      ..positionName = positionName ?? this.positionName
      ..totalIndicatedWeight = totalIndicatedWeight ?? this.totalIndicatedWeight
      ..totalIndicatedWeightOfTon = totalIndicatedWeightOfTon ?? this.totalIndicatedWeightOfTon
      ..errorWeight = errorWeight ?? this.errorWeight
      ..grainSalesOutWarehouseDetailDtoList = grainSalesOutWarehouseDetailDtoList ??
          this.grainSalesOutWarehouseDetailDtoList;
  }
}