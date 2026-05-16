// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_to_relays_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncToRelaysParams _$SyncToRelaysParamsFromJson(Map<String, dynamic> json) =>
    _SyncToRelaysParams(forceFullSync: json['forceFullSync'] as bool? ?? false);

Map<String, dynamic> _$SyncToRelaysParamsToJson(_SyncToRelaysParams instance) =>
    <String, dynamic>{'forceFullSync': instance.forceFullSync};

_SyncToRelaysResult _$SyncToRelaysResultFromJson(Map<String, dynamic> json) =>
    _SyncToRelaysResult(
      pushedCount: (json['pushedCount'] as num).toInt(),
      completedAt: DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$SyncToRelaysResultToJson(_SyncToRelaysResult instance) =>
    <String, dynamic>{
      'pushedCount': instance.pushedCount,
      'completedAt': instance.completedAt.toIso8601String(),
    };
