import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/money.dart';
import '../../../../core/common/value_objects/transaction_id.dart';
import '../../../bitcoin/domain/entities/bitcoin_record_snapshot.dart';
import '../../../category/domain/entities/category_id.dart';
import 'payment_method.dart';
import 'transaction_type.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

/// 1 件の取引（収入または支出）。
///
/// Domain 層の中心 Entity。すべてのフィールドは immutable で、変更は
/// `copyWith` を経由する（freezed が生成）。
///
/// - [id]: アプリ内で一意の ID。生成方法は Infrastructure 側に委譲。
/// - [type]: 収入 or 支出。
/// - [amount]: 金額。`Money` が通貨種別（JPY/USD/sat）を内包する。
/// - [categoryId]: 紐づくカテゴリ（食費・給料等）の ID。
/// - [occurredAt]: 取引が実際に発生した日時（記録した日時ではない）。
/// - [paymentMethod]: 現金 / カード / Bitcoin 等。
/// - [memo]: 任意のメモ。null = 未入力。
/// - [bitcoinSnapshot]: 支払いが Bitcoin の場合のみ非 null。
///   記録時点の sat 量・JPY 換算値・USD 換算値・レートを保存しておくことで、
///   後で振り返ったときに「当時いくらだったか」を再計算なしで表示できる。
/// - [createdAt] / [updatedAt]: 監査用タイムスタンプ。Nostr 同期での
///   コンフリクト解消（last-write-wins）にも使う。
@freezed
class Transaction with _$Transaction {
  const Transaction._();

  const factory Transaction({
    required TransactionId id,
    required TransactionType type,
    required Money amount,
    required CategoryId categoryId,
    required DateTime occurredAt,
    required PaymentMethod paymentMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? memo,
    BitcoinRecordSnapshot? bitcoinSnapshot,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  /// Bitcoin 支払いの取引かどうか。
  bool get isBitcoin => paymentMethod == PaymentMethod.bitcoin;

  /// 支出か。
  bool get isExpense => type == TransactionType.expense;

  /// 収入か。
  bool get isIncome => type == TransactionType.income;
}
