import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:fpdart/fpdart.dart';
import 'package:suito/src/rust/api/bitcoin.dart';

import '../../domain/entities/bitcoin_record_snapshot.dart';
import '../../domain/failures/bitcoin_failure.dart';
import '../../domain/repositories/bitcoin_repository.dart';
import '../datasources/bitcoin_snapshot_rust_datasource.dart';

/// [BitcoinRepository] の Rust ブリッジ実装。
///
/// HTTP・換算は Rust（`rust/src/api/bitcoin.rs`）に委譲し、Dart では
/// [BitcoinFailure] へのマッピングのみ行う。
class BitcoinRepositoryImpl implements BitcoinRepository {
  BitcoinRepositoryImpl(this._datasource);

  final BitcoinSnapshotRustDatasource _datasource;

  @override
  Future<Either<BitcoinFailure, BitcoinRecordSnapshot>> buildSnapshot({
    required int satAmount,
  }) async {
    try {
      final built = await _datasource.buildFromSat(satAmount: satAmount);
      return Right(_mapSnapshot(built));
    } on AnyhowException catch (e) {
      return Left(_mapAnyhowMessage(e.message));
    } catch (e) {
      return Left(BitcoinFailure.unexpected(message: e.toString()));
    }
  }

  BitcoinRecordSnapshot _mapSnapshot(BuiltBitcoinRecordSnapshot built) {
    return BitcoinRecordSnapshot(
      satAmount: _rustInt(built.satAmount),
      jpyAtRecordTime: _rustInt(built.jpyAtRecordTime),
      usdCentsAtRecordTime: _rustInt(built.usdCentsAtRecordTime),
      btcJpyRate: _rustInt(built.btcJpyRate),
      btcUsdCentRate: _rustInt(built.btcUsdCentRate),
      recordedAt: DateTime.fromMillisecondsSinceEpoch(
        _rustInt(built.recordedAtMillisSinceEpochUtc),
        isUtc: true,
      ),
    );
  }

  /// `PlatformInt64` は dart:io では **int**, Web (WASM) では **BigInt**。
  int _rustInt(Object v) {
    if (v is int) {
      return v;
    }
    if (v is BigInt) {
      return v.toInt();
    }
    throw ArgumentError('unexpected rust int transport type: ${v.runtimeType}');
  }

  BitcoinFailure _mapAnyhowMessage(String message) {
    final lower = message.toLowerCase();
    if (lower.contains('invalid_sat_amount')) {
      return BitcoinFailure.invalidSatAmount(reason: message);
    }
    if (lower.contains('429') ||
        lower.contains('all providers failed') ||
        lower.contains('fetch_exchange') ||
        lower.contains('missing btc_') ||
        lower.contains('rate pair not found')) {
      return BitcoinFailure.rateUnavailable(message: message);
    }
    if (lower.contains('dns') ||
        lower.contains('timed out') ||
        lower.contains('timeout') ||
        lower.contains('failed to connect') ||
        lower.contains('network')) {
      return BitcoinFailure.rateUnavailable(message: message);
    }
    return BitcoinFailure.unexpected(message: message);
  }
}
