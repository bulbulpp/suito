// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JpyMoney _$JpyMoneyFromJson(Map<String, dynamic> json) => JpyMoney(
  amount: (json['amount'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$JpyMoneyToJson(JpyMoney instance) => <String, dynamic>{
  'amount': instance.amount,
  'runtimeType': instance.$type,
};

UsdMoney _$UsdMoneyFromJson(Map<String, dynamic> json) => UsdMoney(
  cents: (json['cents'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$UsdMoneyToJson(UsdMoney instance) => <String, dynamic>{
  'cents': instance.cents,
  'runtimeType': instance.$type,
};

SatMoney _$SatMoneyFromJson(Map<String, dynamic> json) => SatMoney(
  amount: (json['amount'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SatMoneyToJson(SatMoney instance) => <String, dynamic>{
  'amount': instance.amount,
  'runtimeType': instance.$type,
};
