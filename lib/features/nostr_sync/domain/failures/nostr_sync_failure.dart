import 'package:freezed_annotation/freezed_annotation.dart';

part 'nostr_sync_failure.freezed.dart';

/// nostr_sync feature 固有の失敗種別。
@freezed
sealed class NostrSyncFailure with _$NostrSyncFailure {
  const NostrSyncFailure._();

  /// 鍵が未初期化（nsec が無い or インポート未完了）。
  const factory NostrSyncFailure.keyMissing() = NostrSyncKeyMissing;

  /// リレー URL が不正（`wss://` 以外、形式エラー等）。
  const factory NostrSyncFailure.invalidRelayUrl({required String url}) =
      NostrSyncInvalidRelayUrl;

  /// リレーに到達できない（接続失敗・タイムアウト）。
  const factory NostrSyncFailure.relayUnreachable({
    required String url,
    String? message,
  }) = NostrSyncRelayUnreachable;

  /// 署名生成に失敗した（Rust 側の鍵処理エラー）。
  const factory NostrSyncFailure.signatureFailed({String? message}) =
      NostrSyncSignatureFailed;

  /// NIP-44 復号に失敗した（鍵不一致、データ破損等）。
  const factory NostrSyncFailure.decryptionFailed({String? message}) =
      NostrSyncDecryptionFailed;

  /// イベントの形式が想定外（必須フィールド欠落、kind 不一致等）。
  const factory NostrSyncFailure.invalidEvent({String? message}) =
      NostrSyncInvalidEvent;

  /// ローカルストレージ失敗（リレー設定の保存失敗等）。
  const factory NostrSyncFailure.storageError({String? message}) =
      NostrSyncStorageError;

  /// 想定外の例外。
  const factory NostrSyncFailure.unexpected({String? message}) =
      NostrSyncUnexpected;
}
