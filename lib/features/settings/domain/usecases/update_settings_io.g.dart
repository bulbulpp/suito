// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_settings_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSettingsParams _$UpdateSettingsParamsFromJson(
  Map<String, dynamic> json,
) => _UpdateSettingsParams(
  settings: AppSettings.fromJson(json['settings'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateSettingsParamsToJson(
  _UpdateSettingsParams instance,
) => <String, dynamic>{'settings': instance.settings};

_UpdateSettingsResult _$UpdateSettingsResultFromJson(
  Map<String, dynamic> json,
) => _UpdateSettingsResult(
  settings: AppSettings.fromJson(json['settings'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateSettingsResultToJson(
  _UpdateSettingsResult instance,
) => <String, dynamic>{'settings': instance.settings};
