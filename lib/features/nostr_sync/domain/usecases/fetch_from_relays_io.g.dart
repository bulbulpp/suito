// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_from_relays_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FetchFromRelaysParams _$FetchFromRelaysParamsFromJson(
  Map<String, dynamic> json,
) => _FetchFromRelaysParams(
  since: json['since'] == null ? null : DateTime.parse(json['since'] as String),
);

Map<String, dynamic> _$FetchFromRelaysParamsToJson(
  _FetchFromRelaysParams instance,
) => <String, dynamic>{'since': instance.since?.toIso8601String()};

_FetchFromRelaysResult _$FetchFromRelaysResultFromJson(
  Map<String, dynamic> json,
) => _FetchFromRelaysResult(
  transactions: (json['transactions'] as List<dynamic>)
      .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
      .toList(),
  fetchedAt: DateTime.parse(json['fetchedAt'] as String),
);

Map<String, dynamic> _$FetchFromRelaysResultToJson(
  _FetchFromRelaysResult instance,
) => <String, dynamic>{
  'transactions': instance.transactions,
  'fetchedAt': instance.fetchedAt.toIso8601String(),
};
