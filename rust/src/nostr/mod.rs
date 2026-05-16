//! Nostr 同期用プロトコル層（Rust）。
//!
//! - **NIP-44 v2 のみ**を使用する（NIP-04 は `nostr-sdk` の feature にも入れない）。
//! - 家計データのペイロードは署名付きイベントの `content` に載せる前提。

/// suito のパラメトリック差し替え可能イベント kind（NIP-01 の 30000–39999）。
pub const SUITO_PARAMETERIZED_REPLACEABLE_KIND: u16 = 30_100;
