import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/model/out_storage_weight_entitiy.dart';

OutStorageWeightEntitiy $OutStorageWeightEntitiyFromJson(Map<String, dynamic> json) {
  final OutStorageWeightEntitiy outStorageWeightEntitiy = OutStorageWeightEntitiy();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    outStorageWeightEntitiy.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    outStorageWeightEntitiy.msg = msg;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    outStorageWeightEntitiy.message = message;
  }
  final OutStorageWeightData? data = jsonConvert.convert<OutStorageWeightData>(json['data']);
  if (data != null) {
    outStorageWeightEntitiy.data = data;
  }
  return outStorageWeightEntitiy;
}

Map<String, dynamic> $OutStorageWeightEntitiyToJson(OutStorageWeightEntitiy entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension OutStorageWeightEntitiyExtension on OutStorageWeightEntitiy {
  OutStorageWeightEntitiy copyWith({
    int? code,
    String? msg,
    String? message,
    OutStorageWeightData? data,
  }) {
    return OutStorageWeightEntitiy()
      ..code = code ?? this.code
      ..msg = msg ?? this.msg
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

OutStorageWeightData $OutStorageWeightDataFromJson(Map<String, dynamic> json) {
  final OutStorageWeightData outStorageWeightData = OutStorageWeightData();
  final String? productWeightToday = jsonConvert.convert<String>(json['productWeightToday']);
  if (productWeightToday != null) {
    outStorageWeightData.productWeightToday = productWeightToday;
  }
  final String? price = jsonConvert.convert<String>(json['price']);
  if (price != null) {
    outStorageWeightData.price = price;
  }
  final String? productPriceToday = jsonConvert.convert<String>(json['productPriceToday']);
  if (productPriceToday != null) {
    outStorageWeightData.productPriceToday = productPriceToday;
  }
  final String? weight = jsonConvert.convert<String>(json['weight']);
  if (weight != null) {
    outStorageWeightData.weight = weight;
  }
  return outStorageWeightData;
}

Map<String, dynamic> $OutStorageWeightDataToJson(OutStorageWeightData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['productWeightToday'] = entity.productWeightToday;
  data['price'] = entity.price;
  data['productPriceToday'] = entity.productPriceToday;
  data['weight'] = entity.weight;
  return data;
}

extension OutStorageWeightDataExtension on OutStorageWeightData {
  OutStorageWeightData copyWith({
    String? productWeightToday,
    String? price,
    String? productPriceToday,
    String? weight,
  }) {
    return OutStorageWeightData()
      ..productWeightToday = productWeightToday ?? this.productWeightToday
      ..price = price ?? this.price
      ..productPriceToday = productPriceToday ?? this.productPriceToday
      ..weight = weight ?? this.weight;
  }
}