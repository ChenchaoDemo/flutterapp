import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/sell_trade_detail_entitiy.dart';

SellTradeDetailEntitiy $SellTradeDetailEntitiyFromJson(Map<String, dynamic> json) {
  final SellTradeDetailEntitiy sellTradeDetailEntitiy = SellTradeDetailEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    sellTradeDetailEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    sellTradeDetailEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    sellTradeDetailEntitiy.message = message;
  }
  final SellTradeDetailData? data = jsonConvert.convert<SellTradeDetailData>(json['data']);
  if (data != null) {
    sellTradeDetailEntitiy.data = data;
  }
  return sellTradeDetailEntitiy;
}

Map<String, dynamic> $SellTradeDetailEntitiyToJson(SellTradeDetailEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension SellTradeDetailEntitiyExtension on SellTradeDetailEntitiy {
  SellTradeDetailEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    SellTradeDetailData? data,
  }) {
    return SellTradeDetailEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

SellTradeDetailData $SellTradeDetailDataFromJson(Map<String, dynamic> json) {
  final SellTradeDetailData sellTradeDetailData = SellTradeDetailData();
  final dynamic id = json['id'];
  if (id != null) {
    sellTradeDetailData.id = id;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    sellTradeDetailData.createTime = createTime;
  }
  final dynamic createUserId = json['createUserId'];
  if (createUserId != null) {
    sellTradeDetailData.createUserId = createUserId;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    sellTradeDetailData.updateTime = updateTime;
  }
  final dynamic updateUserId = json['updateUserId'];
  if (updateUserId != null) {
    sellTradeDetailData.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailData.isDeleted = isDeleted;
  }
  final String? cardNum = jsonConvert.convert<String>(json['cardNum']);
  if (cardNum != null) {
    sellTradeDetailData.cardNum = cardNum;
  }
  final dynamic orderId = json['orderId'];
  if (orderId != null) {
    sellTradeDetailData.orderId = orderId;
  }
  final dynamic orderFlowNodeId = json['orderFlowNodeId'];
  if (orderFlowNodeId != null) {
    sellTradeDetailData.orderFlowNodeId = orderFlowNodeId;
  }
  final dynamic sellOrderId = json['sellOrderId'];
  if (sellOrderId != null) {
    sellTradeDetailData.sellOrderId = sellOrderId;
  }
  final dynamic verifyType = json['verifyType'];
  if (verifyType != null) {
    sellTradeDetailData.verifyType = verifyType;
  }
  final dynamic verifyItem = json['verifyItem'];
  if (verifyItem != null) {
    sellTradeDetailData.verifyItem = verifyItem;
  }
  final int? source = jsonConvert.convert<int>(json['source']);
  if (source != null) {
    sellTradeDetailData.source = source;
  }
  final dynamic sampleCheckRecord = json['sampleCheckRecord'];
  if (sampleCheckRecord != null) {
    sellTradeDetailData.sampleCheckRecord = sampleCheckRecord;
  }
  final dynamic order = json['order'];
  if (order != null) {
    sellTradeDetailData.order = order;
  }
  final double? roughWeight = jsonConvert.convert<double>(json['roughWeight']);
  if (roughWeight != null) {
    sellTradeDetailData.roughWeight = roughWeight;
  }
  final double? netWeight = jsonConvert.convert<double>(json['netWeight']);
  if (netWeight != null) {
    sellTradeDetailData.netWeight = netWeight;
  }
  final String? carNumber = jsonConvert.convert<String>(json['carNumber']);
  if (carNumber != null) {
    sellTradeDetailData.carNumber = carNumber;
  }
  final double? tare = jsonConvert.convert<double>(json['tare']);
  if (tare != null) {
    sellTradeDetailData.tare = tare;
  }
  final dynamic impurity = json['impurity'];
  if (impurity != null) {
    sellTradeDetailData.impurity = impurity;
  }
  final dynamic weightNet = json['weightNet'];
  if (weightNet != null) {
    sellTradeDetailData.weightNet = weightNet;
  }
  final dynamic bargainInfo = json['bargainInfo'];
  if (bargainInfo != null) {
    sellTradeDetailData.bargainInfo = bargainInfo;
  }
  final dynamic subtotal = json['subtotal'];
  if (subtotal != null) {
    sellTradeDetailData.subtotal = subtotal;
  }
  final SellTradeDetailDataCustomer? customer = jsonConvert.convert<SellTradeDetailDataCustomer>(
      json['customer']);
  if (customer != null) {
    sellTradeDetailData.customer = customer;
  }
  final SellTradeDetailDataDriver? driver = jsonConvert.convert<SellTradeDetailDataDriver>(
      json['driver']);
  if (driver != null) {
    sellTradeDetailData.driver = driver;
  }
  final SellTradeDetailDataBaseStation? baseStation = jsonConvert.convert<
      SellTradeDetailDataBaseStation>(json['baseStation']);
  if (baseStation != null) {
    sellTradeDetailData.baseStation = baseStation;
  }
  final dynamic sellOrder = json['sellOrder'];
  if (sellOrder != null) {
    sellTradeDetailData.sellOrder = sellOrder;
  }
  final SellTradeDetailDataGrainSalesOutWarehouseDto? grainSalesOutWarehouseDto = jsonConvert
      .convert<SellTradeDetailDataGrainSalesOutWarehouseDto>(json['grainSalesOutWarehouseDto']);
  if (grainSalesOutWarehouseDto != null) {
    sellTradeDetailData.grainSalesOutWarehouseDto = grainSalesOutWarehouseDto;
  }
  final dynamic warehouseName = json['warehouseName'];
  if (warehouseName != null) {
    sellTradeDetailData.warehouseName = warehouseName;
  }
  final dynamic positionName = json['positionName'];
  if (positionName != null) {
    sellTradeDetailData.positionName = positionName;
  }
  final String? operatorName = jsonConvert.convert<String>(json['operatorName']);
  if (operatorName != null) {
    sellTradeDetailData.operatorName = operatorName;
  }
  final dynamic baseRemark = json['baseRemark'];
  if (baseRemark != null) {
    sellTradeDetailData.baseRemark = baseRemark;
  }
  final int? outOrderStatus = jsonConvert.convert<int>(json['outOrderStatus']);
  if (outOrderStatus != null) {
    sellTradeDetailData.outOrderStatus = outOrderStatus;
  }
  final SellTradeDetailDataInWeightRecordDto? inWeightRecordDto = jsonConvert.convert<
      SellTradeDetailDataInWeightRecordDto>(json['inWeightRecordDto']);
  if (inWeightRecordDto != null) {
    sellTradeDetailData.inWeightRecordDto = inWeightRecordDto;
  }
  final SellTradeDetailDataOutWeightRecordDto? outWeightRecordDto = jsonConvert.convert<
      SellTradeDetailDataOutWeightRecordDto>(json['outWeightRecordDto']);
  if (outWeightRecordDto != null) {
    sellTradeDetailData.outWeightRecordDto = outWeightRecordDto;
  }
  return sellTradeDetailData;
}

Map<String, dynamic> $SellTradeDetailDataToJson(SellTradeDetailData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['cardNum'] = entity.cardNum;
  data['orderId'] = entity.orderId;
  data['orderFlowNodeId'] = entity.orderFlowNodeId;
  data['sellOrderId'] = entity.sellOrderId;
  data['verifyType'] = entity.verifyType;
  data['verifyItem'] = entity.verifyItem;
  data['source'] = entity.source;
  data['sampleCheckRecord'] = entity.sampleCheckRecord;
  data['order'] = entity.order;
  data['roughWeight'] = entity.roughWeight;
  data['netWeight'] = entity.netWeight;
  data['carNumber'] = entity.carNumber;
  data['tare'] = entity.tare;
  data['impurity'] = entity.impurity;
  data['weightNet'] = entity.weightNet;
  data['bargainInfo'] = entity.bargainInfo;
  data['subtotal'] = entity.subtotal;
  data['customer'] = entity.customer?.toJson();
  data['driver'] = entity.driver?.toJson();
  data['baseStation'] = entity.baseStation?.toJson();
  data['sellOrder'] = entity.sellOrder;
  data['grainSalesOutWarehouseDto'] = entity.grainSalesOutWarehouseDto?.toJson();
  data['warehouseName'] = entity.warehouseName;
  data['positionName'] = entity.positionName;
  data['operatorName'] = entity.operatorName;
  data['baseRemark'] = entity.baseRemark;
  data['outOrderStatus'] = entity.outOrderStatus;
  data['inWeightRecordDto'] = entity.inWeightRecordDto?.toJson();
  data['outWeightRecordDto'] = entity.outWeightRecordDto?.toJson();
  return data;
}

extension SellTradeDetailDataExtension on SellTradeDetailData {
  SellTradeDetailData copyWith({
    dynamic id,
    dynamic createTime,
    dynamic createUserId,
    dynamic updateTime,
    dynamic updateUserId,
    bool? isDeleted,
    String? cardNum,
    dynamic orderId,
    dynamic orderFlowNodeId,
    dynamic sellOrderId,
    dynamic verifyType,
    dynamic verifyItem,
    int? source,
    dynamic sampleCheckRecord,
    dynamic order,
    double? roughWeight,
    double? netWeight,
    String? carNumber,
    double? tare,
    dynamic impurity,
    dynamic weightNet,
    dynamic bargainInfo,
    dynamic subtotal,
    SellTradeDetailDataCustomer? customer,
    SellTradeDetailDataDriver? driver,
    SellTradeDetailDataBaseStation? baseStation,
    dynamic sellOrder,
    SellTradeDetailDataGrainSalesOutWarehouseDto? grainSalesOutWarehouseDto,
    dynamic warehouseName,
    dynamic positionName,
    String? operatorName,
    dynamic baseRemark,
    int? outOrderStatus,
    SellTradeDetailDataInWeightRecordDto? inWeightRecordDto,
    SellTradeDetailDataOutWeightRecordDto? outWeightRecordDto,
  }) {
    return SellTradeDetailData()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..cardNum = cardNum ?? this.cardNum
      ..orderId = orderId ?? this.orderId
      ..orderFlowNodeId = orderFlowNodeId ?? this.orderFlowNodeId
      ..sellOrderId = sellOrderId ?? this.sellOrderId
      ..verifyType = verifyType ?? this.verifyType
      ..verifyItem = verifyItem ?? this.verifyItem
      ..source = source ?? this.source
      ..sampleCheckRecord = sampleCheckRecord ?? this.sampleCheckRecord
      ..order = order ?? this.order
      ..roughWeight = roughWeight ?? this.roughWeight
      ..netWeight = netWeight ?? this.netWeight
      ..carNumber = carNumber ?? this.carNumber
      ..tare = tare ?? this.tare
      ..impurity = impurity ?? this.impurity
      ..weightNet = weightNet ?? this.weightNet
      ..bargainInfo = bargainInfo ?? this.bargainInfo
      ..subtotal = subtotal ?? this.subtotal
      ..customer = customer ?? this.customer
      ..driver = driver ?? this.driver
      ..baseStation = baseStation ?? this.baseStation
      ..sellOrder = sellOrder ?? this.sellOrder
      ..grainSalesOutWarehouseDto = grainSalesOutWarehouseDto ?? this.grainSalesOutWarehouseDto
      ..warehouseName = warehouseName ?? this.warehouseName
      ..positionName = positionName ?? this.positionName
      ..operatorName = operatorName ?? this.operatorName
      ..baseRemark = baseRemark ?? this.baseRemark
      ..outOrderStatus = outOrderStatus ?? this.outOrderStatus
      ..inWeightRecordDto = inWeightRecordDto ?? this.inWeightRecordDto
      ..outWeightRecordDto = outWeightRecordDto ?? this.outWeightRecordDto;
  }
}

SellTradeDetailDataCustomer $SellTradeDetailDataCustomerFromJson(Map<String, dynamic> json) {
  final SellTradeDetailDataCustomer sellTradeDetailDataCustomer = SellTradeDetailDataCustomer();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataCustomer.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataCustomer.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataCustomer.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellTradeDetailDataCustomer.updateTime = updateTime;
  }
  final int? updateUserId = jsonConvert.convert<int>(json['updateUserId']);
  if (updateUserId != null) {
    sellTradeDetailDataCustomer.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailDataCustomer.isDeleted = isDeleted;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    sellTradeDetailDataCustomer.address = address;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    sellTradeDetailDataCustomer.mobile = mobile;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sellTradeDetailDataCustomer.name = name;
  }
  final String? remark = jsonConvert.convert<String>(json['remark']);
  if (remark != null) {
    sellTradeDetailDataCustomer.remark = remark;
  }
  final String? idCard = jsonConvert.convert<String>(json['idCard']);
  if (idCard != null) {
    sellTradeDetailDataCustomer.idCard = idCard;
  }
  final dynamic crop = json['crop'];
  if (crop != null) {
    sellTradeDetailDataCustomer.crop = crop;
  }
  final dynamic area = json['area'];
  if (area != null) {
    sellTradeDetailDataCustomer.area = area;
  }
  final dynamic kinsfolk = json['kinsfolk'];
  if (kinsfolk != null) {
    sellTradeDetailDataCustomer.kinsfolk = kinsfolk;
  }
  final dynamic kinsfolkMobile = json['kinsfolkMobile'];
  if (kinsfolkMobile != null) {
    sellTradeDetailDataCustomer.kinsfolkMobile = kinsfolkMobile;
  }
  final dynamic plantingAddress = json['plantingAddress'];
  if (plantingAddress != null) {
    sellTradeDetailDataCustomer.plantingAddress = plantingAddress;
  }
  final int? platformUserId = jsonConvert.convert<int>(json['platformUserId']);
  if (platformUserId != null) {
    sellTradeDetailDataCustomer.platformUserId = platformUserId;
  }
  final int? userType = jsonConvert.convert<int>(json['userType']);
  if (userType != null) {
    sellTradeDetailDataCustomer.userType = userType;
  }
  final String? certificateNumber = jsonConvert.convert<String>(json['certificateNumber']);
  if (certificateNumber != null) {
    sellTradeDetailDataCustomer.certificateNumber = certificateNumber;
  }
  final String? standby1 = jsonConvert.convert<String>(json['standby1']);
  if (standby1 != null) {
    sellTradeDetailDataCustomer.standby1 = standby1;
  }
  return sellTradeDetailDataCustomer;
}

Map<String, dynamic> $SellTradeDetailDataCustomerToJson(SellTradeDetailDataCustomer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['address'] = entity.address;
  data['mobile'] = entity.mobile;
  data['name'] = entity.name;
  data['remark'] = entity.remark;
  data['idCard'] = entity.idCard;
  data['crop'] = entity.crop;
  data['area'] = entity.area;
  data['kinsfolk'] = entity.kinsfolk;
  data['kinsfolkMobile'] = entity.kinsfolkMobile;
  data['plantingAddress'] = entity.plantingAddress;
  data['platformUserId'] = entity.platformUserId;
  data['userType'] = entity.userType;
  data['certificateNumber'] = entity.certificateNumber;
  data['standby1'] = entity.standby1;
  return data;
}

extension SellTradeDetailDataCustomerExtension on SellTradeDetailDataCustomer {
  SellTradeDetailDataCustomer copyWith({
    int? id,
    String? createTime,
    int? createUserId,
    String? updateTime,
    int? updateUserId,
    bool? isDeleted,
    String? address,
    String? mobile,
    String? name,
    String? remark,
    String? idCard,
    dynamic crop,
    dynamic area,
    dynamic kinsfolk,
    dynamic kinsfolkMobile,
    dynamic plantingAddress,
    int? platformUserId,
    int? userType,
    String? certificateNumber,
    String? standby1,
  }) {
    return SellTradeDetailDataCustomer()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..address = address ?? this.address
      ..mobile = mobile ?? this.mobile
      ..name = name ?? this.name
      ..remark = remark ?? this.remark
      ..idCard = idCard ?? this.idCard
      ..crop = crop ?? this.crop
      ..area = area ?? this.area
      ..kinsfolk = kinsfolk ?? this.kinsfolk
      ..kinsfolkMobile = kinsfolkMobile ?? this.kinsfolkMobile
      ..plantingAddress = plantingAddress ?? this.plantingAddress
      ..platformUserId = platformUserId ?? this.platformUserId
      ..userType = userType ?? this.userType
      ..certificateNumber = certificateNumber ?? this.certificateNumber
      ..standby1 = standby1 ?? this.standby1;
  }
}

SellTradeDetailDataDriver $SellTradeDetailDataDriverFromJson(Map<String, dynamic> json) {
  final SellTradeDetailDataDriver sellTradeDetailDataDriver = SellTradeDetailDataDriver();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataDriver.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataDriver.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataDriver.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellTradeDetailDataDriver.updateTime = updateTime;
  }
  final int? updateUserId = jsonConvert.convert<int>(json['updateUserId']);
  if (updateUserId != null) {
    sellTradeDetailDataDriver.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailDataDriver.isDeleted = isDeleted;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    sellTradeDetailDataDriver.address = address;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    sellTradeDetailDataDriver.mobile = mobile;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sellTradeDetailDataDriver.name = name;
  }
  final dynamic remark = json['remark'];
  if (remark != null) {
    sellTradeDetailDataDriver.remark = remark;
  }
  final String? idCard = jsonConvert.convert<String>(json['idCard']);
  if (idCard != null) {
    sellTradeDetailDataDriver.idCard = idCard;
  }
  final dynamic carNumber = json['carNumber'];
  if (carNumber != null) {
    sellTradeDetailDataDriver.carNumber = carNumber;
  }
  final dynamic vehicleModel = json['vehicleModel'];
  if (vehicleModel != null) {
    sellTradeDetailDataDriver.vehicleModel = vehicleModel;
  }
  final dynamic registerTonnage = json['registerTonnage'];
  if (registerTonnage != null) {
    sellTradeDetailDataDriver.registerTonnage = registerTonnage;
  }
  final int? platformUserId = jsonConvert.convert<int>(json['platformUserId']);
  if (platformUserId != null) {
    sellTradeDetailDataDriver.platformUserId = platformUserId;
  }
  final int? userType = jsonConvert.convert<int>(json['userType']);
  if (userType != null) {
    sellTradeDetailDataDriver.userType = userType;
  }
  final String? certificateNumber = jsonConvert.convert<String>(json['certificateNumber']);
  if (certificateNumber != null) {
    sellTradeDetailDataDriver.certificateNumber = certificateNumber;
  }
  final String? standby1 = jsonConvert.convert<String>(json['standby1']);
  if (standby1 != null) {
    sellTradeDetailDataDriver.standby1 = standby1;
  }
  return sellTradeDetailDataDriver;
}

Map<String, dynamic> $SellTradeDetailDataDriverToJson(SellTradeDetailDataDriver entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['address'] = entity.address;
  data['mobile'] = entity.mobile;
  data['name'] = entity.name;
  data['remark'] = entity.remark;
  data['idCard'] = entity.idCard;
  data['carNumber'] = entity.carNumber;
  data['vehicleModel'] = entity.vehicleModel;
  data['registerTonnage'] = entity.registerTonnage;
  data['platformUserId'] = entity.platformUserId;
  data['userType'] = entity.userType;
  data['certificateNumber'] = entity.certificateNumber;
  data['standby1'] = entity.standby1;
  return data;
}

extension SellTradeDetailDataDriverExtension on SellTradeDetailDataDriver {
  SellTradeDetailDataDriver copyWith({
    int? id,
    String? createTime,
    int? createUserId,
    String? updateTime,
    int? updateUserId,
    bool? isDeleted,
    String? address,
    String? mobile,
    String? name,
    dynamic remark,
    String? idCard,
    dynamic carNumber,
    dynamic vehicleModel,
    dynamic registerTonnage,
    int? platformUserId,
    int? userType,
    String? certificateNumber,
    String? standby1,
  }) {
    return SellTradeDetailDataDriver()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..address = address ?? this.address
      ..mobile = mobile ?? this.mobile
      ..name = name ?? this.name
      ..remark = remark ?? this.remark
      ..idCard = idCard ?? this.idCard
      ..carNumber = carNumber ?? this.carNumber
      ..vehicleModel = vehicleModel ?? this.vehicleModel
      ..registerTonnage = registerTonnage ?? this.registerTonnage
      ..platformUserId = platformUserId ?? this.platformUserId
      ..userType = userType ?? this.userType
      ..certificateNumber = certificateNumber ?? this.certificateNumber
      ..standby1 = standby1 ?? this.standby1;
  }
}

SellTradeDetailDataBaseStation $SellTradeDetailDataBaseStationFromJson(Map<String, dynamic> json) {
  final SellTradeDetailDataBaseStation sellTradeDetailDataBaseStation = SellTradeDetailDataBaseStation();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataBaseStation.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataBaseStation.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataBaseStation.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellTradeDetailDataBaseStation.updateTime = updateTime;
  }
  final int? updateUserId = jsonConvert.convert<int>(json['updateUserId']);
  if (updateUserId != null) {
    sellTradeDetailDataBaseStation.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailDataBaseStation.isDeleted = isDeleted;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sellTradeDetailDataBaseStation.code = code;
  }
  final String? detailAddress = jsonConvert.convert<String>(json['detailAddress']);
  if (detailAddress != null) {
    sellTradeDetailDataBaseStation.detailAddress = detailAddress;
  }
  final String? introdution = jsonConvert.convert<String>(json['introdution']);
  if (introdution != null) {
    sellTradeDetailDataBaseStation.introdution = introdution;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sellTradeDetailDataBaseStation.name = name;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    sellTradeDetailDataBaseStation.phone = phone;
  }
  final String? responsePerson = jsonConvert.convert<String>(json['responsePerson']);
  if (responsePerson != null) {
    sellTradeDetailDataBaseStation.responsePerson = responsePerson;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    sellTradeDetailDataBaseStation.company = company;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    sellTradeDetailDataBaseStation.status = status;
  }
  final int? cityCode = jsonConvert.convert<int>(json['cityCode']);
  if (cityCode != null) {
    sellTradeDetailDataBaseStation.cityCode = cityCode;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    sellTradeDetailDataBaseStation.cityName = cityName;
  }
  final int? countyCode = jsonConvert.convert<int>(json['countyCode']);
  if (countyCode != null) {
    sellTradeDetailDataBaseStation.countyCode = countyCode;
  }
  final String? countyName = jsonConvert.convert<String>(json['countyName']);
  if (countyName != null) {
    sellTradeDetailDataBaseStation.countyName = countyName;
  }
  final int? provinceCode = jsonConvert.convert<int>(json['provinceCode']);
  if (provinceCode != null) {
    sellTradeDetailDataBaseStation.provinceCode = provinceCode;
  }
  final String? provinceName = jsonConvert.convert<String>(json['provinceName']);
  if (provinceName != null) {
    sellTradeDetailDataBaseStation.provinceName = provinceName;
  }
  final int? platformUserId = jsonConvert.convert<int>(json['platformUserId']);
  if (platformUserId != null) {
    sellTradeDetailDataBaseStation.platformUserId = platformUserId;
  }
  final int? responsePersonPlatformUserId = jsonConvert.convert<int>(
      json['responsePersonPlatformUserId']);
  if (responsePersonPlatformUserId != null) {
    sellTradeDetailDataBaseStation.responsePersonPlatformUserId = responsePersonPlatformUserId;
  }
  final int? baseFlowType = jsonConvert.convert<int>(json['baseFlowType']);
  if (baseFlowType != null) {
    sellTradeDetailDataBaseStation.baseFlowType = baseFlowType;
  }
  final String? ncWarehouseCode = jsonConvert.convert<String>(json['ncWarehouseCode']);
  if (ncWarehouseCode != null) {
    sellTradeDetailDataBaseStation.ncWarehouseCode = ncWarehouseCode;
  }
  final String? ncGroupCode = jsonConvert.convert<String>(json['ncGroupCode']);
  if (ncGroupCode != null) {
    sellTradeDetailDataBaseStation.ncGroupCode = ncGroupCode;
  }
  final String? ncCompanyCode = jsonConvert.convert<String>(json['ncCompanyCode']);
  if (ncCompanyCode != null) {
    sellTradeDetailDataBaseStation.ncCompanyCode = ncCompanyCode;
  }
  final String? ncDeptNo = jsonConvert.convert<String>(json['ncDeptNo']);
  if (ncDeptNo != null) {
    sellTradeDetailDataBaseStation.ncDeptNo = ncDeptNo;
  }
  final String? ncDeptName = jsonConvert.convert<String>(json['ncDeptName']);
  if (ncDeptName != null) {
    sellTradeDetailDataBaseStation.ncDeptName = ncDeptName;
  }
  final String? ncUserCode = jsonConvert.convert<String>(json['ncUserCode']);
  if (ncUserCode != null) {
    sellTradeDetailDataBaseStation.ncUserCode = ncUserCode;
  }
  final String? ncRetailCode = jsonConvert.convert<String>(json['ncRetailCode']);
  if (ncRetailCode != null) {
    sellTradeDetailDataBaseStation.ncRetailCode = ncRetailCode;
  }
  final String? ncUserbCode = jsonConvert.convert<String>(json['ncUserbCode']);
  if (ncUserbCode != null) {
    sellTradeDetailDataBaseStation.ncUserbCode = ncUserbCode;
  }
  final String? abbr = jsonConvert.convert<String>(json['abbr']);
  if (abbr != null) {
    sellTradeDetailDataBaseStation.abbr = abbr;
  }
  final int? sceneType = jsonConvert.convert<int>(json['sceneType']);
  if (sceneType != null) {
    sellTradeDetailDataBaseStation.sceneType = sceneType;
  }
  final String? outWarehouseFlowType = jsonConvert.convert<String>(json['outWarehouseFlowType']);
  if (outWarehouseFlowType != null) {
    sellTradeDetailDataBaseStation.outWarehouseFlowType = outWarehouseFlowType;
  }
  final dynamic baseSettings = json['baseSettings'];
  if (baseSettings != null) {
    sellTradeDetailDataBaseStation.baseSettings = baseSettings;
  }
  return sellTradeDetailDataBaseStation;
}

Map<String, dynamic> $SellTradeDetailDataBaseStationToJson(SellTradeDetailDataBaseStation entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['code'] = entity.code;
  data['detailAddress'] = entity.detailAddress;
  data['introdution'] = entity.introdution;
  data['name'] = entity.name;
  data['phone'] = entity.phone;
  data['responsePerson'] = entity.responsePerson;
  data['company'] = entity.company;
  data['status'] = entity.status;
  data['cityCode'] = entity.cityCode;
  data['cityName'] = entity.cityName;
  data['countyCode'] = entity.countyCode;
  data['countyName'] = entity.countyName;
  data['provinceCode'] = entity.provinceCode;
  data['provinceName'] = entity.provinceName;
  data['platformUserId'] = entity.platformUserId;
  data['responsePersonPlatformUserId'] = entity.responsePersonPlatformUserId;
  data['baseFlowType'] = entity.baseFlowType;
  data['ncWarehouseCode'] = entity.ncWarehouseCode;
  data['ncGroupCode'] = entity.ncGroupCode;
  data['ncCompanyCode'] = entity.ncCompanyCode;
  data['ncDeptNo'] = entity.ncDeptNo;
  data['ncDeptName'] = entity.ncDeptName;
  data['ncUserCode'] = entity.ncUserCode;
  data['ncRetailCode'] = entity.ncRetailCode;
  data['ncUserbCode'] = entity.ncUserbCode;
  data['abbr'] = entity.abbr;
  data['sceneType'] = entity.sceneType;
  data['outWarehouseFlowType'] = entity.outWarehouseFlowType;
  data['baseSettings'] = entity.baseSettings;
  return data;
}

extension SellTradeDetailDataBaseStationExtension on SellTradeDetailDataBaseStation {
  SellTradeDetailDataBaseStation copyWith({
    int? id,
    String? createTime,
    int? createUserId,
    String? updateTime,
    int? updateUserId,
    bool? isDeleted,
    String? code,
    String? detailAddress,
    String? introdution,
    String? name,
    String? phone,
    String? responsePerson,
    String? company,
    String? status,
    int? cityCode,
    String? cityName,
    int? countyCode,
    String? countyName,
    int? provinceCode,
    String? provinceName,
    int? platformUserId,
    int? responsePersonPlatformUserId,
    int? baseFlowType,
    String? ncWarehouseCode,
    String? ncGroupCode,
    String? ncCompanyCode,
    String? ncDeptNo,
    String? ncDeptName,
    String? ncUserCode,
    String? ncRetailCode,
    String? ncUserbCode,
    String? abbr,
    int? sceneType,
    String? outWarehouseFlowType,
    dynamic baseSettings,
  }) {
    return SellTradeDetailDataBaseStation()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..code = code ?? this.code
      ..detailAddress = detailAddress ?? this.detailAddress
      ..introdution = introdution ?? this.introdution
      ..name = name ?? this.name
      ..phone = phone ?? this.phone
      ..responsePerson = responsePerson ?? this.responsePerson
      ..company = company ?? this.company
      ..status = status ?? this.status
      ..cityCode = cityCode ?? this.cityCode
      ..cityName = cityName ?? this.cityName
      ..countyCode = countyCode ?? this.countyCode
      ..countyName = countyName ?? this.countyName
      ..provinceCode = provinceCode ?? this.provinceCode
      ..provinceName = provinceName ?? this.provinceName
      ..platformUserId = platformUserId ?? this.platformUserId
      ..responsePersonPlatformUserId = responsePersonPlatformUserId ??
          this.responsePersonPlatformUserId
      ..baseFlowType = baseFlowType ?? this.baseFlowType
      ..ncWarehouseCode = ncWarehouseCode ?? this.ncWarehouseCode
      ..ncGroupCode = ncGroupCode ?? this.ncGroupCode
      ..ncCompanyCode = ncCompanyCode ?? this.ncCompanyCode
      ..ncDeptNo = ncDeptNo ?? this.ncDeptNo
      ..ncDeptName = ncDeptName ?? this.ncDeptName
      ..ncUserCode = ncUserCode ?? this.ncUserCode
      ..ncRetailCode = ncRetailCode ?? this.ncRetailCode
      ..ncUserbCode = ncUserbCode ?? this.ncUserbCode
      ..abbr = abbr ?? this.abbr
      ..sceneType = sceneType ?? this.sceneType
      ..outWarehouseFlowType = outWarehouseFlowType ?? this.outWarehouseFlowType
      ..baseSettings = baseSettings ?? this.baseSettings;
  }
}

SellTradeDetailDataGrainSalesOutWarehouseDto $SellTradeDetailDataGrainSalesOutWarehouseDtoFromJson(
    Map<String, dynamic> json) {
  final SellTradeDetailDataGrainSalesOutWarehouseDto sellTradeDetailDataGrainSalesOutWarehouseDto = SellTradeDetailDataGrainSalesOutWarehouseDto();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.id = id;
  }
  final dynamic code = json['code'];
  if (code != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.code = code;
  }
  final int? outWarehouseType = jsonConvert.convert<int>(json['outWarehouseType']);
  if (outWarehouseType != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.outWarehouseType = outWarehouseType;
  }
  final String? currentNode = jsonConvert.convert<String>(json['currentNode']);
  if (currentNode != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.currentNode = currentNode;
  }
  final dynamic contractId = json['contractId'];
  if (contractId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.contractId = contractId;
  }
  final dynamic categoryId = json['categoryId'];
  if (categoryId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.categoryId = categoryId;
  }
  final dynamic pdfPathForPay = json['pdfPathForPay'];
  if (pdfPathForPay != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.pdfPathForPay = pdfPathForPay;
  }
  final String? pdfPathForPrint = jsonConvert.convert<String>(json['pdfPathForPrint']);
  if (pdfPathForPrint != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.pdfPathForPrint = pdfPathForPrint;
  }
  final String? number = jsonConvert.convert<String>(json['number']);
  if (number != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.number = number;
  }
  final int? customerId = jsonConvert.convert<int>(json['customerId']);
  if (customerId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.customerId = customerId;
  }
  final int? driverId = jsonConvert.convert<int>(json['driverId']);
  if (driverId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.driverId = driverId;
  }
  final int? cardId = jsonConvert.convert<int>(json['cardId']);
  if (cardId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.cardId = cardId;
  }
  final dynamic positionId = json['positionId'];
  if (positionId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.positionId = positionId;
  }
  final dynamic warehouseId = json['warehouseId'];
  if (warehouseId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.warehouseId = warehouseId;
  }
  final int? baseId = jsonConvert.convert<int>(json['baseId']);
  if (baseId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.baseId = baseId;
  }
  final String? baseName = jsonConvert.convert<String>(json['baseName']);
  if (baseName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.baseName = baseName;
  }
  final double? takeNumber = jsonConvert.convert<double>(json['takeNumber']);
  if (takeNumber != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.takeNumber = takeNumber;
  }
  final dynamic productNumber = json['productNumber'];
  if (productNumber != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.productNumber = productNumber;
  }
  final dynamic stockId = json['stockId'];
  if (stockId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.stockId = stockId;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.status = status;
  }
  final dynamic terminationReason = json['terminationReason'];
  if (terminationReason != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.terminationReason = terminationReason;
  }
  final dynamic signatureInfo = json['signatureInfo'];
  if (signatureInfo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.signatureInfo = signatureInfo;
  }
  final dynamic operationRecordInfo = json['operationRecordInfo'];
  if (operationRecordInfo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.operationRecordInfo = operationRecordInfo;
  }
  final dynamic remark = json['remark'];
  if (remark != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.remark = remark;
  }
  final int? grossWeight = jsonConvert.convert<int>(json['grossWeight']);
  if (grossWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.grossWeight = grossWeight;
  }
  final int? tareWeight = jsonConvert.convert<int>(json['tareWeight']);
  if (tareWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.tareWeight = tareWeight;
  }
  final int? netWeight = jsonConvert.convert<int>(json['netWeight']);
  if (netWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.netWeight = netWeight;
  }
  final dynamic price = json['price'];
  if (price != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.price = price;
  }
  final double? money = jsonConvert.convert<double>(json['money']);
  if (money != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.money = money;
  }
  final String? reportTime = jsonConvert.convert<String>(json['reportTime']);
  if (reportTime != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.reportTime = reportTime;
  }
  final int? payType = jsonConvert.convert<int>(json['payType']);
  if (payType != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.payType = payType;
  }
  final int? payStatus = jsonConvert.convert<int>(json['payStatus']);
  if (payStatus != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.payStatus = payStatus;
  }
  final dynamic tradeNo = json['tradeNo'];
  if (tradeNo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.tradeNo = tradeNo;
  }
  final dynamic invoiceInfo = json['invoiceInfo'];
  if (invoiceInfo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.invoiceInfo = invoiceInfo;
  }
  final int? invoiceStatus = jsonConvert.convert<int>(json['invoiceStatus']);
  if (invoiceStatus != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.invoiceStatus = invoiceStatus;
  }
  final dynamic cfcaInfo = json['cfcaInfo'];
  if (cfcaInfo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.cfcaInfo = cfcaInfo;
  }
  final int? ncStatus = jsonConvert.convert<int>(json['ncStatus']);
  if (ncStatus != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.ncStatus = ncStatus;
  }
  final dynamic ncInfo = json['ncInfo'];
  if (ncInfo != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.ncInfo = ncInfo;
  }
  final String? createBy = jsonConvert.convert<String>(json['createBy']);
  if (createBy != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.createBy = createBy;
  }
  final String? updatedBy = jsonConvert.convert<String>(json['updatedBy']);
  if (updatedBy != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.updatedBy = updatedBy;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.updateTime = updateTime;
  }
  final dynamic adjustmentRecord = json['adjustmentRecord'];
  if (adjustmentRecord != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.adjustmentRecord = adjustmentRecord;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.createUserId = createUserId;
  }
  final dynamic planId = json['planId'];
  if (planId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.planId = planId;
  }
  final dynamic outOrderManuaId = json['outOrderManuaId'];
  if (outOrderManuaId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.outOrderManuaId = outOrderManuaId;
  }
  final dynamic customerName = json['customerName'];
  if (customerName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.customerName = customerName;
  }
  final dynamic customerPhone = json['customerPhone'];
  if (customerPhone != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.customerPhone = customerPhone;
  }
  final dynamic driverName = json['driverName'];
  if (driverName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.driverName = driverName;
  }
  final dynamic driverPhone = json['driverPhone'];
  if (driverPhone != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.driverPhone = driverPhone;
  }
  final dynamic carNumber = json['carNumber'];
  if (carNumber != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.carNumber = carNumber;
  }
  final dynamic cardNum = json['cardNum'];
  if (cardNum != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.cardNum = cardNum;
  }
  final dynamic netWeightOfString = json['netWeightOfString'];
  if (netWeightOfString != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.netWeightOfString = netWeightOfString;
  }
  final String? categoryName = jsonConvert.convert<String>(json['categoryName']);
  if (categoryName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.categoryName = categoryName;
  }
  final dynamic warehouseName = json['warehouseName'];
  if (warehouseName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.warehouseName = warehouseName;
  }
  final dynamic positionName = json['positionName'];
  if (positionName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.positionName = positionName;
  }
  final String? totalIndicatedWeight = jsonConvert.convert<String>(json['totalIndicatedWeight']);
  if (totalIndicatedWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.totalIndicatedWeight = totalIndicatedWeight;
  }
  final String? totalIndicatedWeightOfTon = jsonConvert.convert<String>(
      json['totalIndicatedWeightOfTon']);
  if (totalIndicatedWeightOfTon != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.totalIndicatedWeightOfTon =
        totalIndicatedWeightOfTon;
  }
  final String? errorWeight = jsonConvert.convert<String>(json['errorWeight']);
  if (errorWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.errorWeight = errorWeight;
  }
  final List<
      SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList>? grainSalesOutWarehouseDetailDtoList = (json['grainSalesOutWarehouseDetailDtoList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList>(
          e) as SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList)
      .toList();
  if (grainSalesOutWarehouseDetailDtoList != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDto.grainSalesOutWarehouseDetailDtoList =
        grainSalesOutWarehouseDetailDtoList;
  }
  return sellTradeDetailDataGrainSalesOutWarehouseDto;
}

Map<String, dynamic> $SellTradeDetailDataGrainSalesOutWarehouseDtoToJson(
    SellTradeDetailDataGrainSalesOutWarehouseDto entity) {
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
  data['grainSalesOutWarehouseDetailDtoList'] =
      entity.grainSalesOutWarehouseDetailDtoList?.map((v) => v.toJson()).toList();
  return data;
}

extension SellTradeDetailDataGrainSalesOutWarehouseDtoExtension on SellTradeDetailDataGrainSalesOutWarehouseDto {
  SellTradeDetailDataGrainSalesOutWarehouseDto copyWith({
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
    int? grossWeight,
    int? tareWeight,
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
    dynamic netWeightOfString,
    String? categoryName,
    dynamic warehouseName,
    dynamic positionName,
    String? totalIndicatedWeight,
    String? totalIndicatedWeightOfTon,
    String? errorWeight,
    List<
        SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList>? grainSalesOutWarehouseDetailDtoList,
  }) {
    return SellTradeDetailDataGrainSalesOutWarehouseDto()
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

SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList $SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoListFromJson(
    Map<String, dynamic> json) {
  final SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList = SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.id = id;
  }
  final dynamic status = json['status'];
  if (status != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.status = status;
  }
  final int? categoryId = jsonConvert.convert<int>(json['categoryId']);
  if (categoryId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.categoryId =
        categoryId;
  }
  final String? categoryName = jsonConvert.convert<String>(json['categoryName']);
  if (categoryName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.categoryName =
        categoryName;
  }
  final int? categoryType = jsonConvert.convert<int>(json['categoryType']);
  if (categoryType != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.categoryType =
        categoryType;
  }
  final double? orderCategoryPrice = jsonConvert.convert<double>(json['orderCategoryPrice']);
  if (orderCategoryPrice != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList
        .orderCategoryPrice = orderCategoryPrice;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.price = price;
  }
  final double? costPrice = jsonConvert.convert<double>(json['costPrice']);
  if (costPrice != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.costPrice =
        costPrice;
  }
  final int? specificationsType = jsonConvert.convert<int>(json['specificationsType']);
  if (specificationsType != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList
        .specificationsType = specificationsType;
  }
  final double? specifications = jsonConvert.convert<double>(json['specifications']);
  if (specifications != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.specifications =
        specifications;
  }
  final int? numberBags = jsonConvert.convert<int>(json['numberBags']);
  if (numberBags != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.numberBags =
        numberBags;
  }
  final int? grainSalesOutWarehouseId = jsonConvert.convert<int>(json['grainSalesOutWarehouseId']);
  if (grainSalesOutWarehouseId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList
        .grainSalesOutWarehouseId = grainSalesOutWarehouseId;
  }
  final double? indicatedWeight = jsonConvert.convert<double>(json['indicatedWeight']);
  if (indicatedWeight != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList
        .indicatedWeight = indicatedWeight;
  }
  final int? warehouseId = jsonConvert.convert<int>(json['warehouseId']);
  if (warehouseId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.warehouseId =
        warehouseId;
  }
  final int? positionId = jsonConvert.convert<int>(json['positionId']);
  if (positionId != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.positionId =
        positionId;
  }
  final String? createBy = jsonConvert.convert<String>(json['createBy']);
  if (createBy != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.createBy =
        createBy;
  }
  final String? updatedBy = jsonConvert.convert<String>(json['updatedBy']);
  if (updatedBy != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.updatedBy =
        updatedBy;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.createTime =
        createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.updateTime =
        updateTime;
  }
  final String? warehouseName = jsonConvert.convert<String>(json['warehouseName']);
  if (warehouseName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.warehouseName =
        warehouseName;
  }
  final String? positionName = jsonConvert.convert<String>(json['positionName']);
  if (positionName != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.positionName =
        positionName;
  }
  final dynamic number = json['number'];
  if (number != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.number = number;
  }
  final double? totalPrice = jsonConvert.convert<double>(json['totalPrice']);
  if (totalPrice != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.totalPrice =
        totalPrice;
  }
  final double? priceOfJin = jsonConvert.convert<double>(json['priceOfJin']);
  if (priceOfJin != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.priceOfJin =
        priceOfJin;
  }
  final double? riskPrice = jsonConvert.convert<double>(json['riskPrice']);
  if (riskPrice != null) {
    sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList.riskPrice =
        riskPrice;
  }
  return sellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList;
}

Map<String,
    dynamic> $SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoListToJson(
    SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['categoryId'] = entity.categoryId;
  data['categoryName'] = entity.categoryName;
  data['categoryType'] = entity.categoryType;
  data['orderCategoryPrice'] = entity.orderCategoryPrice;
  data['price'] = entity.price;
  data['costPrice'] = entity.costPrice;
  data['specificationsType'] = entity.specificationsType;
  data['specifications'] = entity.specifications;
  data['numberBags'] = entity.numberBags;
  data['grainSalesOutWarehouseId'] = entity.grainSalesOutWarehouseId;
  data['indicatedWeight'] = entity.indicatedWeight;
  data['warehouseId'] = entity.warehouseId;
  data['positionId'] = entity.positionId;
  data['createBy'] = entity.createBy;
  data['updatedBy'] = entity.updatedBy;
  data['createTime'] = entity.createTime;
  data['updateTime'] = entity.updateTime;
  data['warehouseName'] = entity.warehouseName;
  data['positionName'] = entity.positionName;
  data['number'] = entity.number;
  data['totalPrice'] = entity.totalPrice;
  data['priceOfJin'] = entity.priceOfJin;
  data['riskPrice'] = entity.riskPrice;
  return data;
}

extension SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoListExtension on SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList {
  SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList copyWith({
    int? id,
    dynamic status,
    int? categoryId,
    String? categoryName,
    int? categoryType,
    double? orderCategoryPrice,
    double? price,
    double? costPrice,
    int? specificationsType,
    double? specifications,
    int? numberBags,
    int? grainSalesOutWarehouseId,
    double? indicatedWeight,
    int? warehouseId,
    int? positionId,
    String? createBy,
    String? updatedBy,
    String? createTime,
    String? updateTime,
    String? warehouseName,
    String? positionName,
    dynamic number,
    double? totalPrice,
    double? priceOfJin,
    double? riskPrice,
  }) {
    return SellTradeDetailDataGrainSalesOutWarehouseDtoGrainSalesOutWarehouseDetailDtoList()
      ..id = id ?? this.id
      ..status = status ?? this.status
      ..categoryId = categoryId ?? this.categoryId
      ..categoryName = categoryName ?? this.categoryName
      ..categoryType = categoryType ?? this.categoryType
      ..orderCategoryPrice = orderCategoryPrice ?? this.orderCategoryPrice
      ..price = price ?? this.price
      ..costPrice = costPrice ?? this.costPrice
      ..specificationsType = specificationsType ?? this.specificationsType
      ..specifications = specifications ?? this.specifications
      ..numberBags = numberBags ?? this.numberBags
      ..grainSalesOutWarehouseId = grainSalesOutWarehouseId ?? this.grainSalesOutWarehouseId
      ..indicatedWeight = indicatedWeight ?? this.indicatedWeight
      ..warehouseId = warehouseId ?? this.warehouseId
      ..positionId = positionId ?? this.positionId
      ..createBy = createBy ?? this.createBy
      ..updatedBy = updatedBy ?? this.updatedBy
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..warehouseName = warehouseName ?? this.warehouseName
      ..positionName = positionName ?? this.positionName
      ..number = number ?? this.number
      ..totalPrice = totalPrice ?? this.totalPrice
      ..priceOfJin = priceOfJin ?? this.priceOfJin
      ..riskPrice = riskPrice ?? this.riskPrice;
  }
}

SellTradeDetailDataInWeightRecordDto $SellTradeDetailDataInWeightRecordDtoFromJson(
    Map<String, dynamic> json) {
  final SellTradeDetailDataInWeightRecordDto sellTradeDetailDataInWeightRecordDto = SellTradeDetailDataInWeightRecordDto();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataInWeightRecordDto.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataInWeightRecordDto.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataInWeightRecordDto.createUserId = createUserId;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    sellTradeDetailDataInWeightRecordDto.updateTime = updateTime;
  }
  final dynamic updateUserId = json['updateUserId'];
  if (updateUserId != null) {
    sellTradeDetailDataInWeightRecordDto.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailDataInWeightRecordDto.isDeleted = isDeleted;
  }
  final dynamic equipmentNumber = json['equipmentNumber'];
  if (equipmentNumber != null) {
    sellTradeDetailDataInWeightRecordDto.equipmentNumber = equipmentNumber;
  }
  final int? orderFlowNodeId = jsonConvert.convert<int>(json['orderFlowNodeId']);
  if (orderFlowNodeId != null) {
    sellTradeDetailDataInWeightRecordDto.orderFlowNodeId = orderFlowNodeId;
  }
  final dynamic orderId = json['orderId'];
  if (orderId != null) {
    sellTradeDetailDataInWeightRecordDto.orderId = orderId;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    sellTradeDetailDataInWeightRecordDto.type = type;
  }
  final String? unit = jsonConvert.convert<String>(json['unit']);
  if (unit != null) {
    sellTradeDetailDataInWeightRecordDto.unit = unit;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    sellTradeDetailDataInWeightRecordDto.userId = userId;
  }
  final double? weight = jsonConvert.convert<double>(json['weight']);
  if (weight != null) {
    sellTradeDetailDataInWeightRecordDto.weight = weight;
  }
  final String? orderNo = jsonConvert.convert<String>(json['orderNo']);
  if (orderNo != null) {
    sellTradeDetailDataInWeightRecordDto.orderNo = orderNo;
  }
  final String? carNumber = jsonConvert.convert<String>(json['carNumber']);
  if (carNumber != null) {
    sellTradeDetailDataInWeightRecordDto.carNumber = carNumber;
  }
  final dynamic plateNumber = json['plateNumber'];
  if (plateNumber != null) {
    sellTradeDetailDataInWeightRecordDto.plateNumber = plateNumber;
  }
  final int? sellOrderId = jsonConvert.convert<int>(json['sellOrderId']);
  if (sellOrderId != null) {
    sellTradeDetailDataInWeightRecordDto.sellOrderId = sellOrderId;
  }
  final dynamic outWeightFileIds = json['outWeightFileIds'];
  if (outWeightFileIds != null) {
    sellTradeDetailDataInWeightRecordDto.outWeightFileIds = outWeightFileIds;
  }
  final List<int>? inWeightFileIds = (json['inWeightFileIds'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<int>(e) as int).toList();
  if (inWeightFileIds != null) {
    sellTradeDetailDataInWeightRecordDto.inWeightFileIds = inWeightFileIds;
  }
  return sellTradeDetailDataInWeightRecordDto;
}

Map<String, dynamic> $SellTradeDetailDataInWeightRecordDtoToJson(
    SellTradeDetailDataInWeightRecordDto entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['equipmentNumber'] = entity.equipmentNumber;
  data['orderFlowNodeId'] = entity.orderFlowNodeId;
  data['orderId'] = entity.orderId;
  data['type'] = entity.type;
  data['unit'] = entity.unit;
  data['userId'] = entity.userId;
  data['weight'] = entity.weight;
  data['orderNo'] = entity.orderNo;
  data['carNumber'] = entity.carNumber;
  data['plateNumber'] = entity.plateNumber;
  data['sellOrderId'] = entity.sellOrderId;
  data['outWeightFileIds'] = entity.outWeightFileIds;
  data['inWeightFileIds'] = entity.inWeightFileIds;
  return data;
}

extension SellTradeDetailDataInWeightRecordDtoExtension on SellTradeDetailDataInWeightRecordDto {
  SellTradeDetailDataInWeightRecordDto copyWith({
    int? id,
    String? createTime,
    int? createUserId,
    dynamic updateTime,
    dynamic updateUserId,
    bool? isDeleted,
    dynamic equipmentNumber,
    int? orderFlowNodeId,
    dynamic orderId,
    int? type,
    String? unit,
    int? userId,
    double? weight,
    String? orderNo,
    String? carNumber,
    dynamic plateNumber,
    int? sellOrderId,
    dynamic outWeightFileIds,
    List<int>? inWeightFileIds,
  }) {
    return SellTradeDetailDataInWeightRecordDto()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..equipmentNumber = equipmentNumber ?? this.equipmentNumber
      ..orderFlowNodeId = orderFlowNodeId ?? this.orderFlowNodeId
      ..orderId = orderId ?? this.orderId
      ..type = type ?? this.type
      ..unit = unit ?? this.unit
      ..userId = userId ?? this.userId
      ..weight = weight ?? this.weight
      ..orderNo = orderNo ?? this.orderNo
      ..carNumber = carNumber ?? this.carNumber
      ..plateNumber = plateNumber ?? this.plateNumber
      ..sellOrderId = sellOrderId ?? this.sellOrderId
      ..outWeightFileIds = outWeightFileIds ?? this.outWeightFileIds
      ..inWeightFileIds = inWeightFileIds ?? this.inWeightFileIds;
  }
}

SellTradeDetailDataOutWeightRecordDto $SellTradeDetailDataOutWeightRecordDtoFromJson(
    Map<String, dynamic> json) {
  final SellTradeDetailDataOutWeightRecordDto sellTradeDetailDataOutWeightRecordDto = SellTradeDetailDataOutWeightRecordDto();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sellTradeDetailDataOutWeightRecordDto.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    sellTradeDetailDataOutWeightRecordDto.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    sellTradeDetailDataOutWeightRecordDto.createUserId = createUserId;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    sellTradeDetailDataOutWeightRecordDto.updateTime = updateTime;
  }
  final dynamic updateUserId = json['updateUserId'];
  if (updateUserId != null) {
    sellTradeDetailDataOutWeightRecordDto.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    sellTradeDetailDataOutWeightRecordDto.isDeleted = isDeleted;
  }
  final dynamic equipmentNumber = json['equipmentNumber'];
  if (equipmentNumber != null) {
    sellTradeDetailDataOutWeightRecordDto.equipmentNumber = equipmentNumber;
  }
  final int? orderFlowNodeId = jsonConvert.convert<int>(json['orderFlowNodeId']);
  if (orderFlowNodeId != null) {
    sellTradeDetailDataOutWeightRecordDto.orderFlowNodeId = orderFlowNodeId;
  }
  final dynamic orderId = json['orderId'];
  if (orderId != null) {
    sellTradeDetailDataOutWeightRecordDto.orderId = orderId;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    sellTradeDetailDataOutWeightRecordDto.type = type;
  }
  final String? unit = jsonConvert.convert<String>(json['unit']);
  if (unit != null) {
    sellTradeDetailDataOutWeightRecordDto.unit = unit;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    sellTradeDetailDataOutWeightRecordDto.userId = userId;
  }
  final double? weight = jsonConvert.convert<double>(json['weight']);
  if (weight != null) {
    sellTradeDetailDataOutWeightRecordDto.weight = weight;
  }
  final String? orderNo = jsonConvert.convert<String>(json['orderNo']);
  if (orderNo != null) {
    sellTradeDetailDataOutWeightRecordDto.orderNo = orderNo;
  }
  final String? carNumber = jsonConvert.convert<String>(json['carNumber']);
  if (carNumber != null) {
    sellTradeDetailDataOutWeightRecordDto.carNumber = carNumber;
  }
  final dynamic plateNumber = json['plateNumber'];
  if (plateNumber != null) {
    sellTradeDetailDataOutWeightRecordDto.plateNumber = plateNumber;
  }
  final int? sellOrderId = jsonConvert.convert<int>(json['sellOrderId']);
  if (sellOrderId != null) {
    sellTradeDetailDataOutWeightRecordDto.sellOrderId = sellOrderId;
  }
  final dynamic outWeightFileIds = json['outWeightFileIds'];
  if (outWeightFileIds != null) {
    sellTradeDetailDataOutWeightRecordDto.outWeightFileIds = outWeightFileIds;
  }
  final dynamic inWeightFileIds = json['inWeightFileIds'];
  if (inWeightFileIds != null) {
    sellTradeDetailDataOutWeightRecordDto.inWeightFileIds = inWeightFileIds;
  }
  return sellTradeDetailDataOutWeightRecordDto;
}

Map<String, dynamic> $SellTradeDetailDataOutWeightRecordDtoToJson(
    SellTradeDetailDataOutWeightRecordDto entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['equipmentNumber'] = entity.equipmentNumber;
  data['orderFlowNodeId'] = entity.orderFlowNodeId;
  data['orderId'] = entity.orderId;
  data['type'] = entity.type;
  data['unit'] = entity.unit;
  data['userId'] = entity.userId;
  data['weight'] = entity.weight;
  data['orderNo'] = entity.orderNo;
  data['carNumber'] = entity.carNumber;
  data['plateNumber'] = entity.plateNumber;
  data['sellOrderId'] = entity.sellOrderId;
  data['outWeightFileIds'] = entity.outWeightFileIds;
  data['inWeightFileIds'] = entity.inWeightFileIds;
  return data;
}

extension SellTradeDetailDataOutWeightRecordDtoExtension on SellTradeDetailDataOutWeightRecordDto {
  SellTradeDetailDataOutWeightRecordDto copyWith({
    int? id,
    String? createTime,
    int? createUserId,
    dynamic updateTime,
    dynamic updateUserId,
    bool? isDeleted,
    dynamic equipmentNumber,
    int? orderFlowNodeId,
    dynamic orderId,
    int? type,
    String? unit,
    int? userId,
    double? weight,
    String? orderNo,
    String? carNumber,
    dynamic plateNumber,
    int? sellOrderId,
    dynamic outWeightFileIds,
    dynamic inWeightFileIds,
  }) {
    return SellTradeDetailDataOutWeightRecordDto()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..equipmentNumber = equipmentNumber ?? this.equipmentNumber
      ..orderFlowNodeId = orderFlowNodeId ?? this.orderFlowNodeId
      ..orderId = orderId ?? this.orderId
      ..type = type ?? this.type
      ..unit = unit ?? this.unit
      ..userId = userId ?? this.userId
      ..weight = weight ?? this.weight
      ..orderNo = orderNo ?? this.orderNo
      ..carNumber = carNumber ?? this.carNumber
      ..plateNumber = plateNumber ?? this.plateNumber
      ..sellOrderId = sellOrderId ?? this.sellOrderId
      ..outWeightFileIds = outWeightFileIds ?? this.outWeightFileIds
      ..inWeightFileIds = inWeightFileIds ?? this.inWeightFileIds;
  }
}