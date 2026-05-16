// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: CategoryId.fromJson(json['id'] as Map<String, dynamic>),
  name: json['name'] as String,
  icon: json['icon'] as String,
  colorHex: json['colorHex'] as String,
  kind: $enumDecode(_$CategoryKindEnumMap, json['kind']),
  isCustom: json['isCustom'] as bool,
  isHidden: json['isHidden'] as bool,
  sortOrder: (json['sortOrder'] as num).toInt(),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'colorHex': instance.colorHex,
  'kind': _$CategoryKindEnumMap[instance.kind]!,
  'isCustom': instance.isCustom,
  'isHidden': instance.isHidden,
  'sortOrder': instance.sortOrder,
};

const _$CategoryKindEnumMap = {
  CategoryKind.income: 'income',
  CategoryKind.expense: 'expense',
};
