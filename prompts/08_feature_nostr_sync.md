# 08_feature_nostr_sync.md — Nostr リレー同期の本格実装

## このプロンプトをいつ使うか

- MVP 完了後、Nostr リレー同期を本格化する時
- 「自分の他デバイスとの同期」のためにリレーを **暗号化メッセージの中継器** として使う

## 何をするのか（要点）

- 取引データを **NIP-44 v2 で自分宛に暗号化** → リレーに publish → 別デバイスから fetch → 復号 → 取り込み
- リレーは「dropbox の代替」のような使い方。**リレー運営者にも内容は見えない**
- Nostr のソーシャル機能（フォロー / DM / ノート公開）は使わない

## 設計方針（変更不可）

- 暗号化は **NIP-44 v2** のみ。**NIP-04 は絶対に使わない**（脆弱性あり）
- Nostr 鍵は **アプリ専用**。SNS 用と分離（既存 npub の流用禁止）
- 鍵は OS の KeyStore / Keychain に保存。Rust 側で `Zeroize` 必須
- イベントの kind は `30100`（ParameterizedReplaceable）。suito 専用
- リレーへの送信失敗は **致命的ではない**（ローカルは正常動作継続）
- 取り込み時の検証: 署名検証 → 復号 → schema 検証 → タイムスタンプチェック
- **過去への遡及書き換え禁止**: タイムスタンプが新しい方を採用 (LWW)

## アーキテクチャ

```
[suito Phone A] ─── publish kind:30100 (NIP-44 encrypted) ───▶ [Relay]
                                                                 │
                                                                 ▼
[suito Phone B] ◀─── subscribe kind:30100 (since=X) ──────── [Relay]
        │
        ▼
   復号 → schema 検証 → 既存 box とマージ
```

## イベント仕様

```
{
  "kind": 30100,
  "pubkey": "<suito 専用 pub>",
  "created_at": <unix>,
  "tags": [
    ["d", "<deterministic id, e.g. tx:<uuid>>"],
    ["app", "suito"],
    ["v", "1"]
  ],
  "content": "<NIP-44 v2 encrypted JSON payload>",
  "sig": "<schnorr sig>"
}
```

`content` の中の平文 JSON:
```json
{
  "type": "transaction" | "category" | "settings",
  "op": "upsert" | "delete",
  "payload": { ... entity ... },
  "device_id": "<this device uuid>"
}
```

## Leaf 分解（推奨）

| Leaf | 役割 | 主な作成ファイル |
|---|---|---|
| `leaf/nostr-rust-keypair` | 鍵生成・読み書き（OS KeyStore） | `rust/src/nostr/keypair.rs`, OS bridge |
| `leaf/nostr-rust-nip44` | NIP-44 v2 暗号化 / 復号 | `rust/src/nostr/nip44.rs` |
| `leaf/nostr-rust-event-builder` | イベント組み立て & 署名 | `rust/src/nostr/event.rs` |
| `leaf/nostr-rust-relay-client` | リレーへの WebSocket 接続 / publish / subscribe | `rust/src/nostr/relay.rs` |
| `leaf/nostr-dart-bridge` | Dart 側ラッパ（Rust の上記を呼ぶ） | `lib/features/nostr_sync/infrastructure/datasources/*.dart` |
| `leaf/nostr-dart-app-push` | ローカル変更を publish する UseCase | `lib/features/nostr_sync/application/usecases/push_*.dart` |
| `leaf/nostr-dart-app-pull` | リレーから fetch → 取り込み UseCase | `lib/features/nostr_sync/application/usecases/pull_*.dart` |
| `leaf/nostr-dart-app-merge` | LWW マージ戦略の UseCase | `lib/features/nostr_sync/application/usecases/merge_*.dart` |
| `leaf/nostr-pres-relays-page` | リレー URL CRUD ページ | `lib/features/settings/presentation/pages/relays_page.dart` |
| `leaf/nostr-pres-sync-status-badge` | 同期状態バッジ widget | `lib/features/nostr_sync/presentation/widgets/sync_status_badge.dart` |

**並列化のコツ**:
- Rust 側の `keypair.rs` / `nip44.rs` / `event.rs` / `relay.rs` は **トレイト境界が決まれば独立**。最初に **trait 一覧と関数シグネチャだけ別 Leaf でコミット**しておくと、後続が並列化しやすい。
- Dart 側の push / pull / merge は Rust 側 bridge がマージ済みなら並列実装可。

## 推奨ライブラリ（Rust 側）

- `nostr-sdk = "0.x"` （NIP-44 対応バージョンを必ず指定）
- `secp256k1` （ECDH ＋ Schnorr）
- `aes-gcm` / `chacha20poly1305` （nostr-sdk が内部で使う）
- `argon2` （アプリ起動時パスフレーズ展開用、もし採用するなら）
- `zeroize`, `secrecy`
- `tokio` + `tokio-tungstenite`（WebSocket）

## ↓ プロンプト本体 ↓

Nostr 同期機能の Leaf を 1 つ実装します。

**今回の Leaf**: [上の表から 1 つ選ぶ]

**手順**:
1. `.cursor/rules/{core,architecture,rust,nostr,security,leaf-node}.mdc` 全部必読
2. `git branch --show-current` で自分が今いる Leaf を確認
3. 該当ファイルのみを **新規作成**
4. Rust 側を触る Leaf:
   - すべての関数で `Result<T, anyhow::Error>` を返す（`unwrap` 禁止）
   - 鍵 / プレーンテキストを保持する型は `Zeroize` + `ZeroizeOnDrop` 必須
   - 平文ログ禁止（`tracing` でも本番ログには `pubkey` 末尾 8 文字くらいに切る）
5. Dart 側を触る Leaf:
   - Riverpod は `@riverpod` 注釈、`ConsumerWidget` 禁止
   - `Either<Failure, T>` で返す
6. テスト:
   - Rust: `cargo test --manifest-path rust/Cargo.toml`
   - Dart: 該当 feature の `flutter test`
7. 1 コミット → push

**禁止事項（厳守）**:
- **NIP-04 を使う**（NIP-44 v2 のみ）
- **平文（暗号化前）のペイロードをログに出す**
- **秘密鍵をログ / Dart 側変数に長期保持する**（Rust 内で都度ロード→ Zeroize）
- HTTP（`ws://` のみは許容するか？ → **`wss://` のみ許容**。`ws://` 禁止）
- `app_providers.dart` / `main.dart` 編集（Phase 3 で別途）
- 鍵の clipboard コピー機能（ユーザー要望があっても **デフォルトでオフ**、60 秒で自動クリア）

**追加考慮事項**:
- 初回起動時の **鍵生成 UX** をどうするか:
  - (案 A) アプリ内で生成 + バックアップ画面（24 ワード / nsec 表示、画面録画 / スクショ防止フラグ）
  - (案 B) 既存の Nostr 鍵をインポート（ただし「**SNS 用と同じ鍵は推奨しない**」警告必須）
- リレー接続失敗時の挙動: ローカルは正常動作続行、UI に小さく「同期されていません」表示

**完了報告**:
- 追加ファイル一覧
- セキュリティ自己チェック（NIP-44 v2 確認、鍵ライフサイクル、ログ確認）
- スクリーンショット（UI 変更時）

---

## チェックリスト（Nostr 全体）

- [ ] 暗号化は NIP-44 v2 のみ（コード grep で `nip04` がない）
- [ ] 鍵は OS KeyStore に保存（Android: EncryptedSharedPreferences、iOS: Keychain）
- [ ] Rust 側で鍵を扱うコードに `Zeroize` 派生 / 明示的 `zeroize()` 呼び出しがある
- [ ] リレー URL は `wss://` のみ受け付ける（`ws://` 拒否のバリデーションあり）
- [ ] イベント受信時、署名検証 + schema 検証 + タイムスタンプ妥当性チェックの順で必ず全部行う
- [ ] 不明な `kind` / `app` / `v` のイベントは安全に無視（クラッシュしない）
- [ ] 同期ステータスが UI に常時見える（不安にならない UX）
- [ ] 取引データのリレー往復が**ローカルでは止まらない**（オフライン耐性）
