import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay_info.freezed.dart';
part 'relay_info.g.dart';

/// 同期に使う Nostr リレーの設定。
///
/// セキュリティ要件（`security.mdc`「Nostr リレー: wss:// のみ。
/// ws:// 拒否」）に従い、`url` は `wss://` 必須。バリデーションは
/// Application / Infrastructure 層で行う。
///
/// - [url]: リレーの WebSocket URL（必ず `wss://` で始まる）。
/// - [isEnabled]: 同期対象にするか。OFF にすると push/fetch から除外。
/// - [lastSyncAt]: 最後に同期成功した時刻（成功事例があれば非 null）。
/// - [displayName]: ユーザー任意のニックネーム。null = URL を表示。
@freezed
class RelayInfo with _$RelayInfo {
  const RelayInfo._();

  const factory RelayInfo({
    required String url,
    required bool isEnabled,
    DateTime? lastSyncAt,
    String? displayName,
  }) = _RelayInfo;

  factory RelayInfo.fromJson(Map<String, dynamic> json) =>
      _$RelayInfoFromJson(json);
}
