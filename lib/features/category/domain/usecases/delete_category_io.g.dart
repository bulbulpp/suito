// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_category_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteCategoryParams _$DeleteCategoryParamsFromJson(
  Map<String, dynamic> json,
) => _DeleteCategoryParams(
  id: CategoryId.fromJson(json['id'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteCategoryParamsToJson(
  _DeleteCategoryParams instance,
) => <String, dynamic>{'id': instance.id};

_DeleteCategoryResult _$DeleteCategoryResultFromJson(
  Map<String, dynamic> json,
) => _DeleteCategoryResult(
  deletedId: CategoryId.fromJson(json['deletedId'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteCategoryResultToJson(
  _DeleteCategoryResult instance,
) => <String, dynamic>{'deletedId': instance.deletedId};
