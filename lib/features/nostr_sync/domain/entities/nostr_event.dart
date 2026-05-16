import 'package:freezed_annotation/freezed_annotation.dart';

part 'nostr_event.freezed.dart';
part 'nostr_event.g.dart';

/// Nostr プロトコルの 1 イベント（NIP-01）。
///
/// 実体はリレーに投げる JSON。署名検証や暗号化（NIP-44 v2）は **Rust 側**
/// で行う（`security.mdc`「Rust 側で暗号処理を行う。Dart 側で生鍵を扱わない」）。
/// Dart 層では「すでに署名済みの不変オブジェクト」として扱うのみ。
///
/// - [id]: イベント ID（pubkey + created_at + kind + tags + content の SHA-256）。
/// - [pubkey]: 作成者の公開鍵（hex 64 文字）。
/// - [createdAt]: 作成 Unix 秒（NIP-01 仕様）。
/// - [kind]: イベント種別（Nostr の kind 番号）。
/// - [content]: イベントペイロード。家計データを乗せる場合は NIP-44 で
///   既に暗号化された文字列が入る（生の家計データを入れてはいけない）。
/// - [tags]: NIP-01 の tag 配列（["e", "<event-id>"] 等）。
/// - [sig]: 64 バイトの BIP-340 Schnorr 署名（hex 128 文字）。
@freezed
abstract class NostrEvent with _$NostrEvent {
  const NostrEvent._();

  const factory NostrEvent({
    required String id,
    required String pubkey,
    required int createdAt,
    required int kind,
    required String content,
    required List<List<String>> tags,
    required String sig,
  }) = _NostrEvent;

  factory NostrEvent.fromJson(Map<String, dynamic> json) =>
      _$NostrEventFromJson(json);
}
