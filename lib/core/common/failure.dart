import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// アプリ全体で共通の失敗種別。
///
/// ドメイン固有の失敗（例: `TransactionFailure`）はこの型に直接乗らず、
/// 各 feature の `failures/` で個別の sealed 型として定義する。
/// この `Failure` は「どの feature でも起こり得る共通エラー」を表す。
///
/// パターンマッチを強制するため `sealed` で定義している。
@freezed
sealed class Failure with _$Failure {
  const Failure._();

  /// ネットワーク到達失敗 / タイムアウト / DNS など、通信レイヤーの障害。
  const factory Failure.network({String? message}) = NetworkFailure;

  /// ローカルストレージ（Hive、ファイル等）の読み書き失敗。
  const factory Failure.storage({String? message}) = StorageFailure;

  /// 入力値が業務ルールに反する（金額が 0 以下、必須フィールド欠落など）。
  const factory Failure.validation({required String message}) =
      ValidationFailure;

  /// ユーザー操作 / プログラム制御によるキャンセル。失敗ではなく中断。
  const factory Failure.cancelled() = CancelledFailure;

  /// 想定外の例外。バグかライブラリの未知の挙動。
  const factory Failure.unexpected({String? message, Object? cause}) =
      UnexpectedFailure;
}
