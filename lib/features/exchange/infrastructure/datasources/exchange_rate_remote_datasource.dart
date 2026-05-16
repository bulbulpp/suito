import 'package:suito/src/rust/api/exchange.dart';

/// ネットワーク越しに Rust 側で複数公開 API をフェイルオーバーする薄ラッパ。
///
/// 実装詳細は `rust/src/api/exchange.rs`。Dart 側は生成された
/// `fetchExchangeRatesFromNetwork()` を単に叩くだけ。
abstract interface class ExchangeRateRemoteDatasource {
  /// BTC/JPY・BTC/USD cents・USD/JPY をまとめて取得する。
  Future<List<FetchedExchangeRate>> fetchFromNetwork();
}

/// FFI コード生成関数をそのまま使う標準実装。
class FlutterRustBridgeExchangeRateRemoteDatasource
    implements ExchangeRateRemoteDatasource {
  const FlutterRustBridgeExchangeRateRemoteDatasource();

  @override
  Future<List<FetchedExchangeRate>> fetchFromNetwork() =>
      fetchExchangeRatesFromNetwork();
}
