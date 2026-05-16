import 'dart:math';

import 'package:fpdart/fpdart.dart';

import '../../../../core/common/value_objects/transaction_id.dart';
import '../../domain/entities/payment_method.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/transaction_type.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../datasources/transaction_local_datasource.dart';
import '../models/transaction_hive_model.dart';

/// [TransactionRepository] の Hive ベース実装。
///
/// 役割:
/// - Domain Entity ↔ Hive DTO の変換（`TransactionHiveModel.fromEntity` 等）
/// - DataSource の例外を [TransactionFailure] に詰め替える
/// - 並び順 / フィルタなど「アプリ側で計算できる読み出し制御」をまとめて担う
///   （Hive にはクエリ機構がないので、メモリ上で素直にフィルタする）
/// - 新規 [Transaction.id] が空の場合に Infrastructure 側で UUID 風 ID を採番
///
/// 注意: ここでは ID 採番にサードパーティの uuid パッケージを使わない
/// （Phase 1 の本 Leaf では pubspec.yaml を触らない方針）。
/// `Random.secure()` で 16 byte の乱数を生成し、UUIDv4 風の 8-4-4-4-12 hex 文字列に
/// 成形する。暗号学的に安全な乱数なので一意性は十分。
class TransactionRepositoryImpl implements TransactionRepository {
  TransactionRepositoryImpl(this._dataSource, {Random? random})
      : _random = random ?? Random.secure();

  final TransactionLocalDataSource _dataSource;
  final Random _random;

  @override
  Future<Either<TransactionFailure, Transaction>> create(Transaction t) async {
    try {
      final now = DateTime.now().toUtc();
      final assigned = t.copyWith(
        id: t.id.value.isEmpty
            ? TransactionId(value: _generateId())
            : t.id,
        createdAt: t.createdAt.toUtc(),
        updatedAt: now,
      );
      final model = TransactionHiveModel.fromEntity(assigned);
      await _dataSource.put(model);
      return Right(assigned);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, Transaction>> update(Transaction t) async {
    try {
      final existing = _dataSource.getById(t.id.value);
      if (existing == null) {
        return const Left(TransactionFailure.notFound());
      }
      final now = DateTime.now().toUtc();
      final updated = t.copyWith(updatedAt: now);
      final model = TransactionHiveModel.fromEntity(updated);
      await _dataSource.put(model);
      return Right(updated);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> delete(TransactionId id) async {
    try {
      final existing = _dataSource.getById(id.value);
      if (existing == null) {
        return const Left(TransactionFailure.notFound());
      }
      await _dataSource.delete(id.value);
      return const Right(unit);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, Transaction>> findById(
    TransactionId id,
  ) async {
    try {
      final model = _dataSource.getById(id.value);
      if (model == null) {
        return const Left(TransactionFailure.notFound());
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, List<Transaction>>> findByDateRange({
    required DateTime from,
    required DateTime to,
    TransactionType? type,
    PaymentMethod? paymentMethod,
  }) async {
    try {
      final fromUtc = from.toUtc();
      final toUtc = to.toUtc();
      final result = _dataSource
          .getAll()
          .map((m) => m.toEntity())
          .where((t) {
            final occurred = t.occurredAt.toUtc();
            // `from` 以上、`to` 未満（仕様コメントに準拠）。
            final inRange = !occurred.isBefore(fromUtc) &&
                occurred.isBefore(toUtc);
            if (!inRange) return false;
            if (type != null && t.type != type) return false;
            if (paymentMethod != null && t.paymentMethod != paymentMethod) {
              return false;
            }
            return true;
          })
          .toList()
        ..sort((a, b) => a.occurredAt.compareTo(b.occurredAt));
      return Right(result);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, List<Transaction>>> findRecent({
    int? limit,
  }) async {
    try {
      final all = _dataSource
          .getAll()
          .map((m) => m.toEntity())
          .toList()
        ..sort((a, b) => b.occurredAt.compareTo(a.occurredAt));
      if (limit != null && limit >= 0 && all.length > limit) {
        return Right(all.sublist(0, limit));
      }
      return Right(all);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<TransactionFailure, List<Transaction>>> findAll() async {
    try {
      final all =
          _dataSource.getAll().map((m) => m.toEntity()).toList(growable: false);
      return Right(all);
    } catch (e) {
      return Left(TransactionFailure.storageError(message: e.toString()));
    }
  }

  @override
  Stream<Transaction> watch() {
    return _dataSource
        .watch()
        .where((m) => m != null)
        .cast<TransactionHiveModel>()
        .map((m) => m.toEntity());
  }

  /// UUIDv4 風の ID を `Random.secure()` で生成する。
  ///
  /// 形式: `xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx`（y は 8/9/a/b のいずれか）。
  /// 厳密な RFC 4122 準拠ではないが、衝突確率は実用上ゼロでアプリ内 ID として十分。
  String _generateId() {
    final bytes = List<int>.generate(16, (_) => _random.nextInt(256));
    // バージョン 4 を示すビットを立てる（13 文字目を 4 に固定）。
    bytes[6] = (bytes[6] & 0x0f) | 0x40;
    // バリアントを RFC 4122 に合わせる（17 文字目の上位 2bit を 10 に固定）。
    bytes[8] = (bytes[8] & 0x3f) | 0x80;
    String hex(int b) => b.toRadixString(16).padLeft(2, '0');
    final s = bytes.map(hex).join();
    return '${s.substring(0, 8)}-'
        '${s.substring(8, 12)}-'
        '${s.substring(12, 16)}-'
        '${s.substring(16, 20)}-'
        '${s.substring(20, 32)}';
  }
}
