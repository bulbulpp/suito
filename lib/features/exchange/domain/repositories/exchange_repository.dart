import 'package:fpdart/fpdart.dart';

import '../entities/exchange_rate.dart';
import '../entities/rate_pair.dart';
import '../failures/exchange_failure.dart';

/// 為替・BTC レートを取得する Repository の契約。
///
/// 実装は Infrastructure 層（複数プロバイダ + Rust 側 HTTP クライアント）。
/// セキュリティ要件（`security.mdc`）に従い、公開レートのみを扱う。
/// API キーや個人特定情報は送らない。
abstract interface class ExchangeRepository {
  /// 全 [RatePair]（BTC_JPY / BTC_USD / USD_JPY）のレートをまとめて取得する。
  ///
  /// - [forceRefresh] = true の場合、キャッシュを無視して再取得する。
  /// - キャッシュは Infrastructure 内部で保持（60 秒 TTL を想定）。
  /// - 1 プロバイダが失敗したら次のプロバイダにフォールオーバ。全滅したら
  ///   [ExchangeFailure.allProvidersFailed]。
  Future<Either<ExchangeFailure, List<ExchangeRate>>> getRates({
    bool forceRefresh = false,
  });

  /// 個別ペアのレートを取得する（特定の換算が欲しいとき用）。
  Future<Either<ExchangeFailure, ExchangeRate>> getRate({
    required RatePair pair,
    bool forceRefresh = false,
  });

  /// 直近のキャッシュ済みレートをそのまま返す（取得は行わない）。
  ///
  /// オフライン時のフォールバック表示用。キャッシュが無ければ空リスト。
  /// 「最終更新時刻」は ExchangeRate.fetchedAt から取れる。
  Future<List<ExchangeRate>> getCachedRates();
}
