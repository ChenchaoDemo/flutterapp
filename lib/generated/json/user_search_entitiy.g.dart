import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/user_search_entitiy.dart';

UserSearchEntitiy $UserSearchEntitiyFromJson(Map<String, dynamic> json) {
  final UserSearchEntitiy userSearchEntitiy = UserSearchEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    userSearchEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    userSearchEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    userSearchEntitiy.message = message;
  }
  final UserSearchData? data = jsonConvert.convert<UserSearchData>(json['data']);
  if (data != null) {
    userSearchEntitiy.data = data;
  }
  return userSearchEntitiy;
}

Map<String, dynamic> $UserSearchEntitiyToJson(UserSearchEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension UserSearchEntitiyExtension on UserSearchEntitiy {
  UserSearchEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    UserSearchData? data,
  }) {
    return UserSearchEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

UserSearchData $UserSearchDataFromJson(Map<String, dynamic> json) {
  final UserSearchData userSearchData = UserSearchData();
  final List<UserSearchDataData>? data = (json['data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<UserSearchDataData>(e) as UserSearchDataData).toList();
  if (data != null) {
    userSearchData.data = data;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    userSearchData.count = count;
  }
  return userSearchData;
}

Map<String, dynamic> $UserSearchDataToJson(UserSearchData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  data['count'] = entity.count;
  return data;
}

extension UserSearchDataExtension on UserSearchData {
  UserSearchData copyWith({
    List<UserSearchDataData>? data,
    int? count,
  }) {
    return UserSearchData()
      ..data = data ?? this.data
      ..count = count ?? this.count;
  }
}

UserSearchDataData $UserSearchDataDataFromJson(Map<String, dynamic> json) {
  final UserSearchDataData userSearchDataData = UserSearchDataData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userSearchDataData.id = id;
  }
  final int? farmerId = jsonConvert.convert<int>(json['farmerId']);
  if (farmerId != null) {
    userSearchDataData.farmerId = farmerId;
  }
  final int? salesmanId = jsonConvert.convert<int>(json['salesmanId']);
  if (salesmanId != null) {
    userSearchDataData.salesmanId = salesmanId;
  }
  final String? userCode = jsonConvert.convert<String>(json['userCode']);
  if (userCode != null) {
    userSearchDataData.userCode = userCode;
  }
  final String? loginName = jsonConvert.convert<String>(json['loginName']);
  if (loginName != null) {
    userSearchDataData.loginName = loginName;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    userSearchDataData.phone = phone;
  }
  final String? userPwd = jsonConvert.convert<String>(json['userPwd']);
  if (userPwd != null) {
    userSearchDataData.userPwd = userPwd;
  }
  final int? userType = jsonConvert.convert<int>(json['userType']);
  if (userType != null) {
    userSearchDataData.userType = userType;
  }
  final String? companyName = jsonConvert.convert<String>(json['companyName']);
  if (companyName != null) {
    userSearchDataData.companyName = companyName;
  }
  final String? idNumber = jsonConvert.convert<String>(json['idNumber']);
  if (idNumber != null) {
    userSearchDataData.idNumber = idNumber;
  }
  final String? certificateNumber = jsonConvert.convert<String>(json['certificateNumber']);
  if (certificateNumber != null) {
    userSearchDataData.certificateNumber = certificateNumber;
  }
  final String? realName = jsonConvert.convert<String>(json['realName']);
  if (realName != null) {
    userSearchDataData.realName = realName;
  }
  final String? papersFrontImg = jsonConvert.convert<String>(json['papersFrontImg']);
  if (papersFrontImg != null) {
    userSearchDataData.papersFrontImg = papersFrontImg;
  }
  final dynamic papersAfterImg = json['papersAfterImg'];
  if (papersAfterImg != null) {
    userSearchDataData.papersAfterImg = papersAfterImg;
  }
  final dynamic proviceId = json['proviceId'];
  if (proviceId != null) {
    userSearchDataData.proviceId = proviceId;
  }
  final dynamic proviceName = json['proviceName'];
  if (proviceName != null) {
    userSearchDataData.proviceName = proviceName;
  }
  final dynamic cityId = json['cityId'];
  if (cityId != null) {
    userSearchDataData.cityId = cityId;
  }
  final dynamic cityName = json['cityName'];
  if (cityName != null) {
    userSearchDataData.cityName = cityName;
  }
  final dynamic countiesId = json['countiesId'];
  if (countiesId != null) {
    userSearchDataData.countiesId = countiesId;
  }
  final dynamic countiesName = json['countiesName'];
  if (countiesName != null) {
    userSearchDataData.countiesName = countiesName;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    userSearchDataData.address = address;
  }
  final int? merchantState = jsonConvert.convert<int>(json['merchantState']);
  if (merchantState != null) {
    userSearchDataData.merchantState = merchantState;
  }
  final dynamic twoPreservationId = json['twoPreservationId'];
  if (twoPreservationId != null) {
    userSearchDataData.twoPreservationId = twoPreservationId;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    userSearchDataData.email = email;
  }
  final dynamic openingBank = json['openingBank'];
  if (openingBank != null) {
    userSearchDataData.openingBank = openingBank;
  }
  final dynamic bankAccount = json['bankAccount'];
  if (bankAccount != null) {
    userSearchDataData.bankAccount = bankAccount;
  }
  final dynamic headPortrait = json['headPortrait'];
  if (headPortrait != null) {
    userSearchDataData.headPortrait = headPortrait;
  }
  final int? authenticationState = jsonConvert.convert<int>(json['authenticationState']);
  if (authenticationState != null) {
    userSearchDataData.authenticationState = authenticationState;
  }
  final String? truePath = jsonConvert.convert<String>(json['truePath']);
  if (truePath != null) {
    userSearchDataData.truePath = truePath;
  }
  final int? isWhetherAssure = jsonConvert.convert<int>(json['isWhetherAssure']);
  if (isWhetherAssure != null) {
    userSearchDataData.isWhetherAssure = isWhetherAssure;
  }
  final String? companyAddress = jsonConvert.convert<String>(json['companyAddress']);
  if (companyAddress != null) {
    userSearchDataData.companyAddress = companyAddress;
  }
  final dynamic companyType = json['companyType'];
  if (companyType != null) {
    userSearchDataData.companyType = companyType;
  }
  final String? companyInfo = jsonConvert.convert<String>(json['companyInfo']);
  if (companyInfo != null) {
    userSearchDataData.companyInfo = companyInfo;
  }
  final int? delStatus = jsonConvert.convert<int>(json['delStatus']);
  if (delStatus != null) {
    userSearchDataData.delStatus = delStatus;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    userSearchDataData.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    userSearchDataData.updateTime = updateTime;
  }
  final String? standby1 = jsonConvert.convert<String>(json['standby1']);
  if (standby1 != null) {
    userSearchDataData.standby1 = standby1;
  }
  final String? standby3 = jsonConvert.convert<String>(json['standby3']);
  if (standby3 != null) {
    userSearchDataData.standby3 = standby3;
  }
  final String? standby4 = jsonConvert.convert<String>(json['standby4']);
  if (standby4 != null) {
    userSearchDataData.standby4 = standby4;
  }
  final String? standby5 = jsonConvert.convert<String>(json['standby5']);
  if (standby5 != null) {
    userSearchDataData.standby5 = standby5;
  }
  return userSearchDataData;
}

Map<String, dynamic> $UserSearchDataDataToJson(UserSearchDataData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['farmerId'] = entity.farmerId;
  data['salesmanId'] = entity.salesmanId;
  data['userCode'] = entity.userCode;
  data['loginName'] = entity.loginName;
  data['phone'] = entity.phone;
  data['userPwd'] = entity.userPwd;
  data['userType'] = entity.userType;
  data['companyName'] = entity.companyName;
  data['idNumber'] = entity.idNumber;
  data['certificateNumber'] = entity.certificateNumber;
  data['realName'] = entity.realName;
  data['papersFrontImg'] = entity.papersFrontImg;
  data['papersAfterImg'] = entity.papersAfterImg;
  data['proviceId'] = entity.proviceId;
  data['proviceName'] = entity.proviceName;
  data['cityId'] = entity.cityId;
  data['cityName'] = entity.cityName;
  data['countiesId'] = entity.countiesId;
  data['countiesName'] = entity.countiesName;
  data['address'] = entity.address;
  data['merchantState'] = entity.merchantState;
  data['twoPreservationId'] = entity.twoPreservationId;
  data['email'] = entity.email;
  data['openingBank'] = entity.openingBank;
  data['bankAccount'] = entity.bankAccount;
  data['headPortrait'] = entity.headPortrait;
  data['authenticationState'] = entity.authenticationState;
  data['truePath'] = entity.truePath;
  data['isWhetherAssure'] = entity.isWhetherAssure;
  data['companyAddress'] = entity.companyAddress;
  data['companyType'] = entity.companyType;
  data['companyInfo'] = entity.companyInfo;
  data['delStatus'] = entity.delStatus;
  data['createTime'] = entity.createTime;
  data['updateTime'] = entity.updateTime;
  data['standby1'] = entity.standby1;
  data['standby3'] = entity.standby3;
  data['standby4'] = entity.standby4;
  data['standby5'] = entity.standby5;
  return data;
}

extension UserSearchDataDataExtension on UserSearchDataData {
  UserSearchDataData copyWith({
    int? id,
    int? farmerId,
    int? salesmanId,
    String? userCode,
    String? loginName,
    String? phone,
    String? userPwd,
    int? userType,
    String? companyName,
    String? idNumber,
    String? certificateNumber,
    String? realName,
    String? papersFrontImg,
    dynamic papersAfterImg,
    dynamic proviceId,
    dynamic proviceName,
    dynamic cityId,
    dynamic cityName,
    dynamic countiesId,
    dynamic countiesName,
    String? address,
    int? merchantState,
    dynamic twoPreservationId,
    String? email,
    dynamic openingBank,
    dynamic bankAccount,
    dynamic headPortrait,
    int? authenticationState,
    String? truePath,
    int? isWhetherAssure,
    String? companyAddress,
    dynamic companyType,
    String? companyInfo,
    int? delStatus,
    String? createTime,
    String? updateTime,
    String? standby1,
    String? standby3,
    String? standby4,
    String? standby5,
  }) {
    return UserSearchDataData()
      ..id = id ?? this.id
      ..farmerId = farmerId ?? this.farmerId
      ..salesmanId = salesmanId ?? this.salesmanId
      ..userCode = userCode ?? this.userCode
      ..loginName = loginName ?? this.loginName
      ..phone = phone ?? this.phone
      ..userPwd = userPwd ?? this.userPwd
      ..userType = userType ?? this.userType
      ..companyName = companyName ?? this.companyName
      ..idNumber = idNumber ?? this.idNumber
      ..certificateNumber = certificateNumber ?? this.certificateNumber
      ..realName = realName ?? this.realName
      ..papersFrontImg = papersFrontImg ?? this.papersFrontImg
      ..papersAfterImg = papersAfterImg ?? this.papersAfterImg
      ..proviceId = proviceId ?? this.proviceId
      ..proviceName = proviceName ?? this.proviceName
      ..cityId = cityId ?? this.cityId
      ..cityName = cityName ?? this.cityName
      ..countiesId = countiesId ?? this.countiesId
      ..countiesName = countiesName ?? this.countiesName
      ..address = address ?? this.address
      ..merchantState = merchantState ?? this.merchantState
      ..twoPreservationId = twoPreservationId ?? this.twoPreservationId
      ..email = email ?? this.email
      ..openingBank = openingBank ?? this.openingBank
      ..bankAccount = bankAccount ?? this.bankAccount
      ..headPortrait = headPortrait ?? this.headPortrait
      ..authenticationState = authenticationState ?? this.authenticationState
      ..truePath = truePath ?? this.truePath
      ..isWhetherAssure = isWhetherAssure ?? this.isWhetherAssure
      ..companyAddress = companyAddress ?? this.companyAddress
      ..companyType = companyType ?? this.companyType
      ..companyInfo = companyInfo ?? this.companyInfo
      ..delStatus = delStatus ?? this.delStatus
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..standby1 = standby1 ?? this.standby1
      ..standby3 = standby3 ?? this.standby3
      ..standby4 = standby4 ?? this.standby4
      ..standby5 = standby5 ?? this.standby5;
  }
}