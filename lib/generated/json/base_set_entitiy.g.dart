import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/base_set_entitiy.dart';

BaseSetEntitiy $BaseSetEntitiyFromJson(Map<String, dynamic> json) {
  final BaseSetEntitiy baseSetEntitiy = BaseSetEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    baseSetEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    baseSetEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    baseSetEntitiy.message = message;
  }
  final BaseSetData? data = jsonConvert.convert<BaseSetData>(json['data']);
  if (data != null) {
    baseSetEntitiy.data = data;
  }
  return baseSetEntitiy;
}

Map<String, dynamic> $BaseSetEntitiyToJson(BaseSetEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension BaseSetEntitiyExtension on BaseSetEntitiy {
  BaseSetEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    BaseSetData? data,
  }) {
    return BaseSetEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

BaseSetData $BaseSetDataFromJson(Map<String, dynamic> json) {
  final BaseSetData baseSetData = BaseSetData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    baseSetData.id = id;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    baseSetData.createTime = createTime;
  }
  final int? createUserId = jsonConvert.convert<int>(json['createUserId']);
  if (createUserId != null) {
    baseSetData.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    baseSetData.updateTime = updateTime;
  }
  final int? updateUserId = jsonConvert.convert<int>(json['updateUserId']);
  if (updateUserId != null) {
    baseSetData.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    baseSetData.isDeleted = isDeleted;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    baseSetData.code = code;
  }
  final String? detailAddress = jsonConvert.convert<String>(json['detailAddress']);
  if (detailAddress != null) {
    baseSetData.detailAddress = detailAddress;
  }
  final String? introdution = jsonConvert.convert<String>(json['introdution']);
  if (introdution != null) {
    baseSetData.introdution = introdution;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    baseSetData.name = name;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    baseSetData.phone = phone;
  }
  final String? responsePerson = jsonConvert.convert<String>(json['responsePerson']);
  if (responsePerson != null) {
    baseSetData.responsePerson = responsePerson;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    baseSetData.company = company;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    baseSetData.status = status;
  }
  final int? cityCode = jsonConvert.convert<int>(json['cityCode']);
  if (cityCode != null) {
    baseSetData.cityCode = cityCode;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    baseSetData.cityName = cityName;
  }
  final int? countyCode = jsonConvert.convert<int>(json['countyCode']);
  if (countyCode != null) {
    baseSetData.countyCode = countyCode;
  }
  final String? countyName = jsonConvert.convert<String>(json['countyName']);
  if (countyName != null) {
    baseSetData.countyName = countyName;
  }
  final int? provinceCode = jsonConvert.convert<int>(json['provinceCode']);
  if (provinceCode != null) {
    baseSetData.provinceCode = provinceCode;
  }
  final String? provinceName = jsonConvert.convert<String>(json['provinceName']);
  if (provinceName != null) {
    baseSetData.provinceName = provinceName;
  }
  final int? platformUserId = jsonConvert.convert<int>(json['platformUserId']);
  if (platformUserId != null) {
    baseSetData.platformUserId = platformUserId;
  }
  final int? responsePersonPlatformUserId = jsonConvert.convert<int>(
      json['responsePersonPlatformUserId']);
  if (responsePersonPlatformUserId != null) {
    baseSetData.responsePersonPlatformUserId = responsePersonPlatformUserId;
  }
  final int? baseFlowType = jsonConvert.convert<int>(json['baseFlowType']);
  if (baseFlowType != null) {
    baseSetData.baseFlowType = baseFlowType;
  }
  final String? ncWarehouseCode = jsonConvert.convert<String>(json['ncWarehouseCode']);
  if (ncWarehouseCode != null) {
    baseSetData.ncWarehouseCode = ncWarehouseCode;
  }
  final String? ncGroupCode = jsonConvert.convert<String>(json['ncGroupCode']);
  if (ncGroupCode != null) {
    baseSetData.ncGroupCode = ncGroupCode;
  }
  final String? ncCompanyCode = jsonConvert.convert<String>(json['ncCompanyCode']);
  if (ncCompanyCode != null) {
    baseSetData.ncCompanyCode = ncCompanyCode;
  }
  final String? ncDeptNo = jsonConvert.convert<String>(json['ncDeptNo']);
  if (ncDeptNo != null) {
    baseSetData.ncDeptNo = ncDeptNo;
  }
  final String? ncDeptName = jsonConvert.convert<String>(json['ncDeptName']);
  if (ncDeptName != null) {
    baseSetData.ncDeptName = ncDeptName;
  }
  final String? ncUserCode = jsonConvert.convert<String>(json['ncUserCode']);
  if (ncUserCode != null) {
    baseSetData.ncUserCode = ncUserCode;
  }
  final String? ncRetailCode = jsonConvert.convert<String>(json['ncRetailCode']);
  if (ncRetailCode != null) {
    baseSetData.ncRetailCode = ncRetailCode;
  }
  final String? ncUserbCode = jsonConvert.convert<String>(json['ncUserbCode']);
  if (ncUserbCode != null) {
    baseSetData.ncUserbCode = ncUserbCode;
  }
  final String? abbr = jsonConvert.convert<String>(json['abbr']);
  if (abbr != null) {
    baseSetData.abbr = abbr;
  }
  final int? sceneType = jsonConvert.convert<int>(json['sceneType']);
  if (sceneType != null) {
    baseSetData.sceneType = sceneType;
  }
  final String? outWarehouseFlowType = jsonConvert.convert<String>(json['outWarehouseFlowType']);
  if (outWarehouseFlowType != null) {
    baseSetData.outWarehouseFlowType = outWarehouseFlowType;
  }
  final List<BaseSetDataBaseSettings>? baseSettings = (json['baseSettings'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<BaseSetDataBaseSettings>(e) as BaseSetDataBaseSettings)
      .toList();
  if (baseSettings != null) {
    baseSetData.baseSettings = baseSettings;
  }
  return baseSetData;
}

Map<String, dynamic> $BaseSetDataToJson(BaseSetData entity) {
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
  data['baseSettings'] = entity.baseSettings?.map((v) => v.toJson()).toList();
  return data;
}

extension BaseSetDataExtension on BaseSetData {
  BaseSetData copyWith({
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
    List<BaseSetDataBaseSettings>? baseSettings,
  }) {
    return BaseSetData()
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

BaseSetDataBaseSettings $BaseSetDataBaseSettingsFromJson(Map<String, dynamic> json) {
  final BaseSetDataBaseSettings baseSetDataBaseSettings = BaseSetDataBaseSettings();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    baseSetDataBaseSettings.id = id;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    baseSetDataBaseSettings.createTime = createTime;
  }
  final dynamic createUserId = json['createUserId'];
  if (createUserId != null) {
    baseSetDataBaseSettings.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    baseSetDataBaseSettings.updateTime = updateTime;
  }
  final int? updateUserId = jsonConvert.convert<int>(json['updateUserId']);
  if (updateUserId != null) {
    baseSetDataBaseSettings.updateUserId = updateUserId;
  }
  final bool? isDeleted = jsonConvert.convert<bool>(json['isDeleted']);
  if (isDeleted != null) {
    baseSetDataBaseSettings.isDeleted = isDeleted;
  }
  final bool? baseCapable = jsonConvert.convert<bool>(json['baseCapable']);
  if (baseCapable != null) {
    baseSetDataBaseSettings.baseCapable = baseCapable;
  }
  final int? baseId = jsonConvert.convert<int>(json['baseId']);
  if (baseId != null) {
    baseSetDataBaseSettings.baseId = baseId;
  }
  final String? keyCode = jsonConvert.convert<String>(json['keyCode']);
  if (keyCode != null) {
    baseSetDataBaseSettings.keyCode = keyCode;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    baseSetDataBaseSettings.name = name;
  }
  final String? remark = jsonConvert.convert<String>(json['remark']);
  if (remark != null) {
    baseSetDataBaseSettings.remark = remark;
  }
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    baseSetDataBaseSettings.status = status;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    baseSetDataBaseSettings.value = value;
  }
  final String? valueType = jsonConvert.convert<String>(json['valueType']);
  if (valueType != null) {
    baseSetDataBaseSettings.valueType = valueType;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    baseSetDataBaseSettings.type = type;
  }
  return baseSetDataBaseSettings;
}

Map<String, dynamic> $BaseSetDataBaseSettingsToJson(BaseSetDataBaseSettings entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['isDeleted'] = entity.isDeleted;
  data['baseCapable'] = entity.baseCapable;
  data['baseId'] = entity.baseId;
  data['keyCode'] = entity.keyCode;
  data['name'] = entity.name;
  data['remark'] = entity.remark;
  data['status'] = entity.status;
  data['value'] = entity.value;
  data['valueType'] = entity.valueType;
  data['type'] = entity.type;
  return data;
}

extension BaseSetDataBaseSettingsExtension on BaseSetDataBaseSettings {
  BaseSetDataBaseSettings copyWith({
    int? id,
    dynamic createTime,
    dynamic createUserId,
    String? updateTime,
    int? updateUserId,
    bool? isDeleted,
    bool? baseCapable,
    int? baseId,
    String? keyCode,
    String? name,
    String? remark,
    bool? status,
    String? value,
    String? valueType,
    int? type,
  }) {
    return BaseSetDataBaseSettings()
      ..id = id ?? this.id
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..isDeleted = isDeleted ?? this.isDeleted
      ..baseCapable = baseCapable ?? this.baseCapable
      ..baseId = baseId ?? this.baseId
      ..keyCode = keyCode ?? this.keyCode
      ..name = name ?? this.name
      ..remark = remark ?? this.remark
      ..status = status ?? this.status
      ..value = value ?? this.value
      ..valueType = valueType ?? this.valueType
      ..type = type ?? this.type;
  }
}