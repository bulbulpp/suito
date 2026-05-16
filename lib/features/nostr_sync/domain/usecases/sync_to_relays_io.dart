import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_to_relays_io.freezed.dart';
part 'sync_to_relays_io.g.dart';

/// `SyncToRelaysUseCase` の入力。
///
/// MVP では「直近に変更があった取引すべて」を一括同期する想定。
/// パラメータは将来拡張用に最小限。
@freezed
class SyncToRelaysParams with _$SyncToRelaysParams {
  const factory SyncToRelaysParams({
    /// 強制全件同期するか（false なら lastSyncAt 以降の差分のみ）。
    @Default(false) bool forceFullSync,
  }) = _SyncToRelaysParams;

  factory SyncToRelaysParams.fromJson(Map<String, dynamic> json) =>
      _$SyncToRelaysParamsFromJson(json);
}

/// `SyncToRelaysUseCase` の成功時の出力。
@freezed
class SyncToRelaysResult with _$SyncToRelaysResult {
  const factory SyncToRelaysResult({
    required int pushedCount,
    required DateTime completedAt,
  }) = _SyncToRelaysResult;

  factory SyncToRelaysResult.fromJson(Map<String, dynamic> json) =>
      _$SyncToRelaysResultFromJson(json);
}
