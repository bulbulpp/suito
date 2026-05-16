// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_settings_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSettingsParams _$GetSettingsParamsFromJson(Map<String, dynamic> json) =>
    _GetSettingsParams();

Map<String, dynamic> _$GetSettingsParamsToJson(_GetSettingsParams instance) =>
    <String, dynamic>{};

_GetSettingsResult _$GetSettingsResultFromJson(Map<String, dynamic> json) =>
    _GetSettingsResult(
      settings: AppSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetSettingsResultToJson(_GetSettingsResult instance) =>
    <String, dynamic>{'settings': instance.settings};
