//! Nostr 向け FFI（NIP-44 v2 + パラメトリック差し替え可能イベント）。
//!
//! 秘密鍵は Dart 側のセキュアストレージから短時間だけ渡す想定。ログに出さないこと。

use anyhow::{Context, Result};
use flutter_rust_bridge::frb;
use nostr_sdk::prelude::*;

use crate::nostr::SUITO_PARAMETERIZED_REPLACEABLE_KIND;

fn parse_keys(secret_key: &str) -> Result<Keys> {
    Keys::parse(secret_key).context("invalid Nostr secret key (expect hex or nsec)")
}

/// NIP-44 v2 で **自分の公開鍵宛て** に暗号化する（同期用ペイロード向け）。
///
/// `encrypt(sender_sk, recipient_pk, ...)` で `recipient_pk == sender_pk` と等价。
#[frb]
pub fn nostr_nip44_encrypt_v2_for_self(plaintext: String, secret_key: String) -> Result<String> {
    let keys = parse_keys(&secret_key)?;
    let pk = keys.public_key();
    nip44::encrypt(keys.secret_key(), &pk, plaintext, nip44::Version::V2)
        .map_err(|e| anyhow::anyhow!(e))
}

/// [nostr_nip44_encrypt_v2_for_self] の逆。イベント検証後に呼ぶこと（NIP-44 要件）。
#[frb]
pub fn nostr_nip44_decrypt_v2_from_self(ciphertext: String, secret_key: String) -> Result<String> {
    let keys = parse_keys(&secret_key)?;
    let pk = keys.public_key();
    nip44::decrypt(keys.secret_key(), &pk, ciphertext).map_err(|e| anyhow::anyhow!(e))
}

/// 平文 JSON を NIP-44 v2 で包み、`kind 30100` + `d` タグの署名済みイベント JSON を返す。
///
/// - `json_payload`: 暗号化前の UTF-8 文字列（通常は取引 JSON）。
/// - `d_tag_identifier`: パラメトリックイベントの決定的 ID（重複時差し替え用）。
#[frb]
pub async fn nostr_sign_encrypted_replaceable_event(
    json_payload: String,
    secret_key: String,
    d_tag_identifier: String,
) -> Result<String> {
    anyhow::ensure!(
        !d_tag_identifier.is_empty(),
        "d tag identifier must be non-empty"
    );
    anyhow::ensure!(d_tag_identifier.len() <= 1024, "d tag identifier too long");

    let keys = parse_keys(&secret_key)?;
    let pk = keys.public_key();
    let ciphertext = nip44::encrypt(keys.secret_key(), &pk, json_payload, nip44::Version::V2)
        .map_err(|e| anyhow::anyhow!(e))?;

    let kind = Kind::from_u16(SUITO_PARAMETERIZED_REPLACEABLE_KIND);

    let builder = EventBuilder::new(kind, &ciphertext).tag(Tag::identifier(d_tag_identifier));

    let event = builder.sign(&keys).await.map_err(|e| anyhow::anyhow!(e))?;

    serde_json::to_string(&event).context("serialize signed event")
}

/// NIP-01 署名・鍵形式の検証（復号前に必須、NIP-44）。
#[frb]
pub fn nostr_verify_event_json(event_json: String) -> Result<()> {
    let event: Event = serde_json::from_str(&event_json).context("parse event JSON")?;
    event.verify().map_err(|e| anyhow::anyhow!(e))
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn nip44_self_roundtrip() {
        let keys = Keys::generate();
        let sk = keys.secret_key().to_secret_hex();
        let msg = "{\"hello\":\"world\"}".to_string();
        let ct = nostr_nip44_encrypt_v2_for_self(msg.clone(), sk.clone()).unwrap();
        let pt = nostr_nip44_decrypt_v2_from_self(ct, sk).unwrap();
        assert_eq!(pt, msg);
    }

    #[tokio::test]
    async fn sign_encrypted_event_roundtrip_verify() {
        let keys = Keys::generate();
        let sk = keys.secret_key().to_secret_hex();
        let payload = "{\"tx\":\"1\"}".to_string();
        let ev = nostr_sign_encrypted_replaceable_event(
            payload.clone(),
            sk.clone(),
            "d-test-1".to_string(),
        )
        .await
        .unwrap();
        nostr_verify_event_json(ev.clone()).unwrap();
        let parsed: Event = serde_json::from_str(&ev).unwrap();
        assert_eq!(parsed.kind.as_u16(), SUITO_PARAMETERIZED_REPLACEABLE_KIND);
        let pk = keys.public_key();
        let pt = nip44::decrypt(keys.secret_key(), &pk, parsed.content.clone()).unwrap();
        assert_eq!(pt, payload);
    }
}
