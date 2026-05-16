import 'package:fpdart/fpdart.dart';

import '../../../transaction/domain/entities/transaction.dart';
import '../entities/relay_info.dart';
import '../entities/sync_status.dart';
import '../failures/nostr_sync_failure.dart';

/// Nostr リレーへの同期を担う Repository の契約。
///
/// 実装は Infrastructure 層。Rust 側の API（イベント署名 / NIP-44 暗号化 /
/// WebSocket I/O）を呼び出し、Dart 層では生鍵に触らない設計（`security.mdc`）。
///
/// すべての通信は `wss://` のみ。`security.mdc` の通信ルールを遵守する。
abstract interface class NostrSyncRepository {
  /// 1 件の取引をリレー群にプッシュする。
  ///
  /// 内部で：
  /// 1. 取引を JSON シリアライズ
  /// 2. Rust 側で NIP-44 v2 暗号化（自分の pubkey 宛て）
  /// 3. Rust 側で署名（自分の nsec）
  /// 4. 有効リレー全てに送信（一部失敗は許容、全失敗で `relayUnreachable`）
  Future<Either<NostrSyncFailure, Unit>> pushTransaction(Transaction tx);

  /// 全リレーから自分宛て暗号化イベントを取得し、復号して Transaction
  /// に戻したリストを返す。
  ///
  /// 重複は ID で除去し、新しい更新だけを返す。
  /// [since] を指定すると、その時刻以降のイベントだけを対象にする。
  Future<Either<NostrSyncFailure, List<Transaction>>> fetchAll({
    DateTime? since,
  });

  /// リレーを追加する。URL は `wss://` 必須。
  Future<Either<NostrSyncFailure, RelayInfo>> addRelay({
    required String url,
    String? displayName,
  });

  /// リレーを削除する。
  Future<Either<NostrSyncFailure, Unit>> removeRelay({required String url});

  /// リレー一覧を取得する（有効/無効 含む全件、`isEnabled` でフィルタは UI 側）。
  Future<Either<NostrSyncFailure, List<RelayInfo>>> listRelays();

  /// リレーの ON/OFF を切替える。
  Future<Either<NostrSyncFailure, RelayInfo>> setRelayEnabled({
    required String url,
    required bool isEnabled,
  });

  /// 同期ステータスのライブ更新ストリーム。
  ///
  /// idle / syncing / success / error の遷移を流す。Provider が `ref.watch`
  /// して UI に反映する。
  Stream<SyncStatus> watchSyncStatus();
}
