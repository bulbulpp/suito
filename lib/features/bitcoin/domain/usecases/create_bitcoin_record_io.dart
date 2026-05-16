import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../category/domain/entities/category_id.dart';
import '../../../transaction/domain/entities/transaction.dart';

part 'create_bitcoin_record_io.freezed.dart';
part 'create_bitcoin_record_io.g.dart';

/// `CreateBitcoinRecordUseCase` の入力。
///
/// UI からは「sat 量・カテゴリ・メモ」だけを受け取る。
/// レート取得・スナップショット作成・Transaction 化・保存は UseCase 内で連結する。
@freezed
abstract class CreateBitcoinRecordParams with _$CreateBitcoinRecordParams {
  const factory CreateBitcoinRecordParams({
    required int satAmount,
    required CategoryId categoryId,
    required DateTime occurredAt,
    String? memo,
  }) = _CreateBitcoinRecordParams;

  factory CreateBitcoinRecordParams.fromJson(Map<String, dynamic> json) =>
      _$CreateBitcoinRecordParamsFromJson(json);
}

/// `CreateBitcoinRecordUseCase` の成功時の出力。
///
/// 永続化された Transaction（必ず `paymentMethod == bitcoin`、
/// `bitcoinSnapshot != null`、`amount` は SatMoney）。
@freezed
abstract class CreateBitcoinRecordResult with _$CreateBitcoinRecordResult {
  const factory CreateBitcoinRecordResult({
    required Transaction transaction,
  }) = _CreateBitcoinRecordResult;

  factory CreateBitcoinRecordResult.fromJson(Map<String, dynamic> json) =>
      _$CreateBitcoinRecordResultFromJson(json);
}
