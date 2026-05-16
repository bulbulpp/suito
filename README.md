# suito

> A household budgeting app for tracking daily income and expenses. The name "suito" comes from the Japanese word *suitōchō* (出納帳), meaning "account book" or "ledger."

[![CI](https://github.com/<owner>/suito/actions/workflows/ci.yml/badge.svg)](https://github.com/<owner>/suito/actions/workflows/ci.yml)

## 概要

suito（出納帳）は、プライバシーを最優先に設計された家計簿アプリです。

- **白黒のミニマル UI**：余計な装飾を排し、毎日の入力を最短で済ませる
- **法定通貨と Bitcoin（sat）両対応**：JPY / USD と sat を併記、為替レート自動取得
- **Nostr 同期**：自分の Nostr リレーにエンドツーエンド暗号化して同期、サーバ不要
- **Zapstore 配布**：Nostr ネイティブのアプリストアを通じて入手可能

参考実装：[higedamc/meiso](https://github.com/higedamc/meiso)

## アーキテクチャ

- **UI**: Flutter（Material 3、白黒テーマ）
- **状態管理**: Riverpod
- **ローカル保存**: Hive（暗号化付き）
- **暗号 / Nostr / 機密処理**: Rust（`flutter_rust_bridge` で FFI）
- **設計方針**: Feature-based Clean Architecture（meiso と同様）

詳細は [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) を参照。

## セキュリティ / プライバシー

- 秘密鍵は Rust 側で **Argon2id + AES-256-GCM** で派生・保管
- `.env` / 鍵ファイルは絶対にコミット・読込しない（[`.cursorignore`](.cursorignore) / [`.gitignore`](.gitignore) で多重防御）
- 通信は HTTPS / wss のみ、Nostr リレーへも暗号化ペイロードのみ送信

脅威モデルと暗号化方針は [`docs/SECURITY_PRIVACY.md`](docs/SECURITY_PRIVACY.md) を参照。

## 開発環境セットアップ

### 必須ツール

| ツール | 用途 | 推奨インストール方法 |
|---|---|---|
| **Flutter SDK** ≧ 3.41 (Dart 3.11+) | UI ビルド | [公式インストーラ](https://docs.flutter.dev/get-started/install) または FVM 経由 |
| **Rust toolchain** ≧ 1.91 (stable) | ネイティブ層 | `rustup` 経由 |
| **`flutter_rust_bridge_codegen`** 2.12+ | FFI コード生成 | `cargo install flutter_rust_bridge_codegen --locked` |
| **`cargo-expand`** | 上記が内部で使用 | `cargo install cargo-expand --locked` |
| **Node.js** ≧ 20 | MCP サーバ用（任意） | [公式](https://nodejs.org/) または `nvm` |

### Windows でのセットアップ補足

`cargo install` 実行時、ビルド成果物が `%TEMP%` に置かれて環境によっては失敗することがあります。
回避するには `CARGO_TARGET_DIR` を `%TEMP%` 外の永続パスに設定:

```powershell
$env:CARGO_TARGET_DIR = "$env:USERPROFILE\.cargo\build-tmp"
cargo install cargo-expand --locked
cargo install flutter_rust_bridge_codegen --locked
```

### 初回セットアップ

```bash
git clone https://github.com/<owner>/suito.git
cd suito

flutter pub get
cargo build --manifest-path rust/Cargo.toml
./generate.sh    # FFI バインディング生成
```

## ビルド

```bash
# Android (debug)
flutter run

# Android (release APK)
flutter build apk --release

# Rust 単独ビルド
cargo build --manifest-path rust/Cargo.toml

# Rust リリース最適化ビルド
cargo build --manifest-path rust/Cargo.toml --release
```

## テスト・静的解析

```bash
flutter analyze
flutter test

cargo fmt --manifest-path rust/Cargo.toml --check
cargo clippy --manifest-path rust/Cargo.toml -- -D warnings
cargo test --manifest-path rust/Cargo.toml
```

## コード生成

Rust 側 API を変更したら、必ずブリッジを再生成してコミット:

```bash
./generate.sh

git add lib/src/rust rust/src/frb_generated.rs
git commit -m "chore: regenerate flutter_rust_bridge bindings"
```

CI で `git diff --exit-code` により最新性を検証しています。

## ライセンス

未定（MIT を予定）。

## ドキュメント

- [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) — レイヤー構成と依存方向
- [`docs/FEATURES.md`](docs/FEATURES.md) — 機能仕様
- [`docs/ROADMAP.md`](docs/ROADMAP.md) — マイルストーン
- [`docs/LEAF_NODE_STRATEGY.md`](docs/LEAF_NODE_STRATEGY.md) — 並列開発の分解計画
- [`docs/SECURITY_PRIVACY.md`](docs/SECURITY_PRIVACY.md) — 脅威モデル
- [`README_SETUP.md`](README_SETUP.md) — エージェント前提のセットアップ手順
