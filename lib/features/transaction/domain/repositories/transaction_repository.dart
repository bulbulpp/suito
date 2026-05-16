import 'package:fpdart/fpdart.dart';

import '../../../../core/common/value_objects/transaction_id.dart';
import '../entities/payment_method.dart';
import '../entities/transaction.dart';
import '../entities/transaction_type.dart';
import '../failures/transaction_failure.dart';

/// 取引を永続化する Repository の契約。
///
/// 実装は Infrastructure 層（`hive_transaction_repository.dart` 等）。
/// Domain 層では「この操作はこういう入出力で、こういう失敗があり得る」
/// という契約だけを規定する。
///
/// 戻り値はすべて `Future<Either<TransactionFailure, T>>`。
/// 例外は投げない（Infrastructure 層で握りつぶして Either に変換する）。
abstract interface class TransactionRepository {
  /// 新規取引を作成して保存する。成功時は永続化されたエンティティを返す
  /// （ID やタイムスタンプは Infrastructure 側で確定する場合があるため）。
  Future<Either<TransactionFailure, Transaction>> create(Transaction t);

  /// 既存取引を更新する。
  ///
  /// 戻り値は更新後の状態。`updatedAt` は Infrastructure 側で再採番する。
  Future<Either<TransactionFailure, Transaction>> update(Transaction t);

  /// 指定 ID の取引を削除する。物理削除を想定（論理削除は MVP では扱わない）。
  Future<Either<TransactionFailure, Unit>> delete(TransactionId id);

  /// 指定 ID の取引を 1 件取得する。存在しなければ [TransactionFailure.notFound]。
  Future<Either<TransactionFailure, Transaction>> findById(TransactionId id);

  /// 期間（`from` 以上、`to` 未満）で取引を列挙する。
  ///
  /// カレンダー画面や月次集計から呼ばれる。並び順は `occurredAt` 昇順。
  /// オプションで取引種別 / 支払い方法による絞り込みが可能。
  Future<Either<TransactionFailure, List<Transaction>>> findByDateRange({
    required DateTime from,
    required DateTime to,
    TransactionType? type,
    PaymentMethod? paymentMethod,
  });

  /// 取引一覧を新しい順に取得する。`limit` で件数を絞れる。
  ///
  /// ダッシュボードの「最近の取引」や、Nostr 同期で全件プッシュする際に使う。
  Future<Either<TransactionFailure, List<Transaction>>> findRecent({
    int? limit,
  });

  /// すべての取引を取得する（Nostr 同期 / エクスポート用）。
  ///
  /// 件数が多くなる可能性があるので、UI からは原則使わない。
  Future<Either<TransactionFailure, List<Transaction>>> findAll();

  /// 取引の変更通知ストリーム（任意実装）。
  ///
  /// 楽観的 UI 更新でローカル変更を即時反映するため、Repository 側でも
  /// 変更を観測できるようにしておく。実装が難しい場合は `Stream.empty()`
  /// を返してよい（Application 層はポーリングで代替する）。
  Stream<Transaction> watch();
}
