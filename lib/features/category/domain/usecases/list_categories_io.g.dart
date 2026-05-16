// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_categories_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListCategoriesParams _$ListCategoriesParamsFromJson(
  Map<String, dynamic> json,
) => _ListCategoriesParams(
  kind: $enumDecodeNullable(_$CategoryKindEnumMap, json['kind']),
  includeHidden: json['includeHidden'] as bool? ?? false,
);

Map<String, dynamic> _$ListCategoriesParamsToJson(
  _ListCategoriesParams instance,
) => <String, dynamic>{
  'kind': _$CategoryKindEnumMap[instance.kind],
  'includeHidden': instance.includeHidden,
};

const _$CategoryKindEnumMap = {
  CategoryKind.income: 'income',
  CategoryKind.expense: 'expense',
};

_ListCategoriesResult _$ListCategoriesResultFromJson(
  Map<String, dynamic> json,
) => _ListCategoriesResult(
  items: (json['items'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListCategoriesResultToJson(
  _ListCategoriesResult instance,
) => <String, dynamic>{'items': instance.items};
