import 'package:hive_ce/hive.dart';

import '../../../../core/common/value_objects/currency.dart';
import '../../../../core/common/value_objects/money.dart';
import '../../../../core/common/value_objects/transaction_id.dart';
import '../../../bitcoin/domain/entities/bitcoin_record_snapshot.dart';
import '../../../category/domain/entities/category_id.dart';
import '../../domain/entities/payment_method.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/transaction_type.dart';

part 'transaction_hive_model.g.dart';

/// Hive に永続化するための Transaction DTO。
///
/// 設計方針（`.cursor/rules/architecture.mdc` / `flutter-dart.mdc` 参照）:
/// - freezed Entity からは TypeAdapter を自動生成しない（hive と freezed の相性問題）。
///   代わりに plain class に `@HiveType` を付け、`fromEntity` / `toEntity` で
///   Domain と相互変換する。
/// - typeId は **feature 横断で固定** （transaction=1 / category=2 / settings=3 /
///   exchange_cache=4 / bitcoin_snapshot=5）。ここを動かすと既存 Hive 領域が壊れる。
/// - Money（sealed）と enum 群は永続化前に「通貨コード + 最小単位整数」「storageKey 文字列」
///   へ素直に分解して保存する。enum.name に依存しないことで将来のリネームに耐える。
@HiveType(typeId: 1)
class TransactionHiveModel extends HiveObject {
  TransactionHiveModel({
    required this.id,
    required this.typeKey,
    required this.currencyCode,
    required this.amountMinorUnit,
    required this.categoryId,
    required this.occurredAtUtc,
    required this.paymentMethodKey,
    required this.createdAtUtc,
    required this.updatedAtUtc,
    this.memo,
    this.bitcoinSnapshot,
  });

  @HiveField(0)
  String id;

  /// `TransactionType.storageKey` の値（'income' / 'expense'）。
  @HiveField(1)
  String typeKey;

  /// `Currency.code` の値（'JPY' / 'USD' / 'sat'）。
  @HiveField(2)
  String currencyCode;

  /// 最小単位整数（JPY: 円、USD: cents、sat: sat）。
  @HiveField(3)
  int amountMinorUnit;

  @HiveField(4)
  String categoryId;

  /// UTC として保存する（タイムゾーン揺れ防止）。読み出し時に local へ変換する想定なし
  /// （家計簿として「発生日」が大事で時刻はあくまで参考）。
  @HiveField(5)
  DateTime occurredAtUtc;

  /// `PaymentMethod.storageKey` の値。
  @HiveField(6)
  String paymentMethodKey;

  @HiveField(7)
  DateTime createdAtUtc;

  @HiveField(8)
  DateTime updatedAtUtc;

  @HiveField(9)
  String? memo;

  @HiveField(10)
  BitcoinSnapshotHiveModel? bitcoinSnapshot;

  /// Domain Entity から DTO を生成する。
  factory TransactionHiveModel.fromEntity(Transaction t) {
    return TransactionHiveModel(
      id: t.id.value,
      typeKey: t.type.storageKey,
      currencyCode: t.amount.currency.code,
      amountMinorUnit: t.amount.minorUnit,
      categoryId: t.categoryId.value,
      occurredAtUtc: t.occurredAt.toUtc(),
      paymentMethodKey: t.paymentMethod.storageKey,
      createdAtUtc: t.createdAt.toUtc(),
      updatedAtUtc: t.updatedAt.toUtc(),
      memo: t.memo,
      bitcoinSnapshot: t.bitcoinSnapshot == null
          ? null
          : BitcoinSnapshotHiveModel.fromEntity(t.bitcoinSnapshot!),
    );
  }

  /// DTO を Domain Entity に戻す。未知の storageKey は `ArgumentError`（バグなので
  /// fail-fast）。
  Transaction toEntity() {
    return Transaction(
      id: TransactionId(value: id),
      type: TransactionType.fromStorageKey(typeKey),
      amount: _moneyFromStorage(currencyCode, amountMinorUnit),
      categoryId: CategoryId(value: categoryId),
      occurredAt: occurredAtUtc,
      paymentMethod: PaymentMethod.fromStorageKey(paymentMethodKey),
      createdAt: createdAtUtc,
      updatedAt: updatedAtUtc,
      memo: memo,
      bitcoinSnapshot: bitcoinSnapshot?.toEntity(),
    );
  }
}

/// Bitcoin 支払いのスナップショット永続化 DTO。
///
/// `Transaction.bitcoinSnapshot` の中身に対応。bitcoin feature の Domain 型
/// `BitcoinRecordSnapshot` を直接 Hive に乗せず、ここに分離して保存する。
/// typeId は表で 5 を予約。
@HiveType(typeId: 5)
class BitcoinSnapshotHiveModel extends HiveObject {
  BitcoinSnapshotHiveModel({
    required this.satAmount,
    required this.jpyAtRecordTime,
    required this.usdCentsAtRecordTime,
    required this.btcJpyRate,
    required this.btcUsdCentRate,
    required this.recordedAtUtc,
  });

  @HiveField(0)
  int satAmount;

  @HiveField(1)
  int jpyAtRecordTime;

  @HiveField(2)
  int usdCentsAtRecordTime;

  @HiveField(3)
  int btcJpyRate;

  @HiveField(4)
  int btcUsdCentRate;

  @HiveField(5)
  DateTime recordedAtUtc;

  factory BitcoinSnapshotHiveModel.fromEntity(BitcoinRecordSnapshot s) {
    return BitcoinSnapshotHiveModel(
      satAmount: s.satAmount,
      jpyAtRecordTime: s.jpyAtRecordTime,
      usdCentsAtRecordTime: s.usdCentsAtRecordTime,
      btcJpyRate: s.btcJpyRate,
      btcUsdCentRate: s.btcUsdCentRate,
      recordedAtUtc: s.recordedAt.toUtc(),
    );
  }

  BitcoinRecordSnapshot toEntity() {
    return BitcoinRecordSnapshot(
      satAmount: satAmount,
      jpyAtRecordTime: jpyAtRecordTime,
      usdCentsAtRecordTime: usdCentsAtRecordTime,
      btcJpyRate: btcJpyRate,
      btcUsdCentRate: btcUsdCentRate,
      recordedAt: recordedAtUtc,
    );
  }
}

/// 通貨コードと最小単位整数から sealed [Money] を再構築する。
Money _moneyFromStorage(String code, int minorUnit) {
  return switch (code) {
    'JPY' => Money.jpy(amount: minorUnit),
    'USD' => Money.usd(cents: minorUnit),
    'sat' => Money.sat(amount: minorUnit),
    _ => throw ArgumentError(
        'Unknown currency code in Hive storage: $code',
      ),
  };
}

/// Currency enum を経由した安全側のヘルパ。テストや将来の利用向けに公開する。
Money moneyFromCurrencyAndMinor(Currency currency, int minorUnit) {
  return switch (currency) {
    Currency.jpy => Money.jpy(amount: minorUnit),
    Currency.usd => Money.usd(cents: minorUnit),
    Currency.sat => Money.sat(amount: minorUnit),
  };
}
