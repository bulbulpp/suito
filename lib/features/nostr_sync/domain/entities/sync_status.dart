import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_status.freezed.dart';

/// Nostr 同期の進捗ステータス。
///
/// UI（同期インジケータ、設定画面の最終同期時刻表示等）に流す。
/// パターンマッチで状態遷移を強制するため sealed。
///
/// 状態遷移（基本パターン）:
/// idle → syncing → success(at) → idle
/// idle → syncing → error(message) → idle
///
/// JSON 化は必要ない想定（永続化せず、メモリ上のストリームでのみ扱う）
/// なので fromJson は提供しない。
@freezed
sealed class SyncStatus with _$SyncStatus {
  const SyncStatus._();

  /// 何もしていない待機状態。
  const factory SyncStatus.idle() = SyncIdle;

  /// 同期中。`progressedEventCount` は処理済みイベント数（任意、UI 進捗用）。
  const factory SyncStatus.syncing({
    @Default(0) int progressedEventCount,
  }) = SyncSyncing;

  /// 直前の同期に成功した。`at` は完了時刻、`pushedCount` / `fetchedCount` は
  /// この回での push / fetch 件数。
  const factory SyncStatus.success({
    required DateTime at,
    @Default(0) int pushedCount,
    @Default(0) int fetchedCount,
  }) = SyncSuccess;

  /// 直前の同期が失敗した。
  const factory SyncStatus.error({
    required String message,
    DateTime? at,
  }) = SyncError;
}
