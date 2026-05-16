import 'package:fpdart/fpdart.dart';

import '../entities/bitcoin_record_snapshot.dart';
import '../failures/bitcoin_failure.dart';

/// Bitcoin 支払いに特化した Repository の契約。
///
/// 多くの責務は `TransactionRepository` と `ExchangeRepository` の組合せで
/// 実現できるが、「sat 入力から記録時点のスナップショットを作る」という
/// **Bitcoin 固有の前処理** をひとつのインタフェースに集約する目的で
/// この Repository を切る（Phase 1 では Rust 側 API も呼ぶ想定）。
///
/// 現時点では薄いインタフェースだが、将来 LNURL / NWC / インボイス発行を
/// 扱う際の自然な拡張点となる。
abstract interface class BitcoinRepository {
  /// 「いま」のレートで sat 量からスナップショットを作る。
  ///
  /// 内部で ExchangeRepository を呼んで btcJpy / btcUsd レートを取得し、
  /// その値で sat → JPY / sat → USD の換算を行う。レートが取れない場合は
  /// [BitcoinFailure.rateUnavailable]。
  Future<Either<BitcoinFailure, BitcoinRecordSnapshot>> buildSnapshot({
    required int satAmount,
  });
}
