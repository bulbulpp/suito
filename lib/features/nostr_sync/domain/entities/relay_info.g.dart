// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelayInfo _$RelayInfoFromJson(Map<String, dynamic> json) => _RelayInfo(
  url: json['url'] as String,
  isEnabled: json['isEnabled'] as bool,
  lastSyncAt: json['lastSyncAt'] == null
      ? null
      : DateTime.parse(json['lastSyncAt'] as String),
  displayName: json['displayName'] as String?,
);

Map<String, dynamic> _$RelayInfoToJson(_RelayInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'isEnabled': instance.isEnabled,
      'lastSyncAt': instance.lastSyncAt?.toIso8601String(),
      'displayName': instance.displayName,
    };
