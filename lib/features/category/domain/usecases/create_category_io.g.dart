// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCategoryParams _$CreateCategoryParamsFromJson(
  Map<String, dynamic> json,
) => _CreateCategoryParams(
  name: json['name'] as String,
  icon: json['icon'] as String,
  kind: $enumDecode(_$CategoryKindEnumMap, json['kind']),
  colorHex: json['colorHex'] as String?,
);

Map<String, dynamic> _$CreateCategoryParamsToJson(
  _CreateCategoryParams instance,
) => <String, dynamic>{
  'name': instance.name,
  'icon': instance.icon,
  'kind': _$CategoryKindEnumMap[instance.kind]!,
  'colorHex': instance.colorHex,
};

const _$CategoryKindEnumMap = {
  CategoryKind.income: 'income',
  CategoryKind.expense: 'expense',
};

_CreateCategoryResult _$CreateCategoryResultFromJson(
  Map<String, dynamic> json,
) => _CreateCategoryResult(
  category: Category.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateCategoryResultToJson(
  _CreateCategoryResult instance,
) => <String, dynamic>{'category': instance.category};
