import 'package:suito/src/rust/api/bitcoin.dart';

/// Rust FFI 経由でスナップショットを組み立てるデータソース（インターフェース）。
///
/// 実装は `FrbBitcoinSnapshotRustDatasource`。テストではモックに差し替える。
abstract interface class BitcoinSnapshotRustDatasource {
  /// [satAmount]（sat）と、この呼び出しで取得したレートからスナップショットを返す。
  Future<BuiltBitcoinRecordSnapshot> buildFromSat({required int satAmount});
}

/// 生成された [buildBitcoinRecordSnapshotFromSat] をそのまま呼ぶ標準実装。
class FrbBitcoinSnapshotRustDatasource
    implements BitcoinSnapshotRustDatasource {
  const FrbBitcoinSnapshotRustDatasource();

  @override
  Future<BuiltBitcoinRecordSnapshot> buildFromSat({required int satAmount}) =>
      buildBitcoinRecordSnapshotFromSat(satAmount: satAmount);
}
