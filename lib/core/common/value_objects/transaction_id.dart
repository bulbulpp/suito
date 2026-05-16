import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_id.freezed.dart';
part 'transaction_id.g.dart';

/// 取引（Transaction）の一意 ID。
///
/// 素の String を引き回さず Value Object として持つことで、
/// 「カテゴリ ID を取引 ID として渡す」ような事故を型で防ぐ。
///
/// 生成方法は Infrastructure 層が決める（UUIDv4 か、Nostr イベント ID を
/// 流用するか、など）。Domain 層では「文字列を内側に持つ ID」とだけ規定する。
@freezed
abstract class TransactionId with _$TransactionId {
  const TransactionId._();

  const factory TransactionId({required String value}) = _TransactionId;

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);

  @override
  String toString() => value;
}
