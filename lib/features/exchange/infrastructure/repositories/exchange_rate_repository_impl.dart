import 'package:fpdart/fpdart.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:suito/src/rust/api/exchange.dart';

import '../../domain/entities/exchange_rate.dart';
import '../../domain/entities/rate_pair.dart';
import '../../domain/failures/exchange_failure.dart';
import '../../domain/repositories/exchange_repository.dart';
import '../datasources/exchange_rate_remote_datasource.dart';

/// [ExchangeRepository] の標準実装（Rust FFI + メモリ 60 秒キャッシュ）。
///
/// メモリキャッシュは Isolate 単位。アプリ再起動／オフライン時は
/// [getCachedRates] がそれまでフェッチ済みならヒットするだけ。
class ExchangeRateRepositoryImpl implements ExchangeRepository {
  ExchangeRateRepositoryImpl(this._remote);

  final ExchangeRateRemoteDatasource _remote;

  List<ExchangeRate>? _cached;
  DateTime? _cachedAtUtc;

  /// Domain の [ExchangeRate.isStaleAt] と同じ TTL 思想。
  static const Duration _ttl = Duration(seconds: 60);

  @override
  Future<Either<ExchangeFailure, List<ExchangeRate>>> getRates({
    bool forceRefresh = false,
  }) async {
    final now = DateTime.now().toUtc();
    final cache = _cached;
    final at = _cachedAtUtc;

    final cacheFresh = cache != null &&
        at != null &&
        !_isStale(snapshotTime: at, now: now) &&
        !forceRefresh;

    if (cacheFresh) {
      return Right(cache);
    }

    try {
      final rows = await _remote.fetchFromNetwork();
      final mapped = rows.map(_mapRow).toList(growable: false);
      _cached = mapped;
      _cachedAtUtc = now;
      return Right(mapped);
    } on AnyhowException catch (e) {
      return Left(_mapAnyhowToFailure(e.message));
    } catch (e) {
      return Left(ExchangeFailure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<ExchangeFailure, ExchangeRate>> getRate({
    required RatePair pair,
    bool forceRefresh = false,
  }) async {
    final bulk = await getRates(forceRefresh: forceRefresh);
    return bulk.fold<Either<ExchangeFailure, ExchangeRate>>(
      Left.new,
      (rates) {
        for (final r in rates) {
          if (r.pair == pair) {
            return Right(r);
          }
        }
        return const Left(
          ExchangeFailure.unexpected(
            message: 'exchange: pair missing in batch result',
          ),
        );
      },
    );
  }

  @override
  Future<List<ExchangeRate>> getCachedRates() async {
    final snapshot = _cached;
    return snapshot == null ? const [] : List<ExchangeRate>.unmodifiable(snapshot);
  }

  bool _isStale({required DateTime snapshotTime, required DateTime now}) =>
      now.difference(snapshotTime) >= _ttl;

  ExchangeFailure _mapAnyhowToFailure(String message) {
    final lowered = message.toLowerCase();
    if (lowered.contains('429')) {
      return const ExchangeFailure.rateLimited();
    }
    if (lowered.contains('all providers failed')) {
      /// Rust 側の anyhow メッセージをそのまま残しつつ、[attemptedProviders] に縮約版を載せる。
      return ExchangeFailure.allProvidersFailed(
        attemptedProviders: [_shorten(message, limit: 400)],
      );
    }
    return ExchangeFailure.network(message: message);
  }

  String _shorten(String m, {required int limit}) =>
      m.length <= limit ? m : '${m.substring(0, limit)}…';

  ExchangeRate _mapRow(FetchedExchangeRate r) {
    final millis = _rustSignedInt(r.fetchedAtMillisSinceEpochUtc);
    final rate = _rustSignedInt(r.rate);

    return ExchangeRate(
      pair: RatePair.fromStorageKey(r.pairKey),
      rate: rate,
      fetchedAt: DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true),
      source: r.source,
    );
  }

  /// `PlatformInt64` は dart:io では **int**, Web (WASM) では **BigInt**。
  int _rustSignedInt(Object v) {
    if (v is int) {
      return v;
    }
    if (v is BigInt) {
      return v.toInt();
    }
    throw ArgumentError('unexpected rust int transport type: ${v.runtimeType}');
  }
}
