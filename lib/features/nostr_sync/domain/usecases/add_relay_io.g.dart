// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_relay_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddRelayParams _$AddRelayParamsFromJson(Map<String, dynamic> json) =>
    _AddRelayParams(
      url: json['url'] as String,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$AddRelayParamsToJson(_AddRelayParams instance) =>
    <String, dynamic>{'url': instance.url, 'displayName': instance.displayName};

_AddRelayResult _$AddRelayResultFromJson(Map<String, dynamic> json) =>
    _AddRelayResult(
      relay: RelayInfo.fromJson(json['relay'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddRelayResultToJson(_AddRelayResult instance) =>
    <String, dynamic>{'relay': instance.relay};
