// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nostr_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NostrEvent _$NostrEventFromJson(Map<String, dynamic> json) => _NostrEvent(
  id: json['id'] as String,
  pubkey: json['pubkey'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
  kind: (json['kind'] as num).toInt(),
  content: json['content'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  sig: json['sig'] as String,
);

Map<String, dynamic> _$NostrEventToJson(_NostrEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pubkey': instance.pubkey,
      'createdAt': instance.createdAt,
      'kind': instance.kind,
      'content': instance.content,
      'tags': instance.tags,
      'sig': instance.sig,
    };
