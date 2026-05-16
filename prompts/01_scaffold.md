# 01_scaffold.md — 最初のプロンプト：プロジェクトスケルトンを作る

## このプロンプトをいつ使うか

- `git clone` した直後の suito リポジトリで一番最初
- まだ Flutter / Rust プロジェクトが何もない状態

## 事前条件

- Flutter SDK インストール済み（できれば fvm）
- Rust toolchain インストール済み
- `flutter_rust_bridge_codegen` インストール済み
- `.cursor/rules/` 配置済み（このキットを適用済み）

## やり方

1. Cursor で `Cmd/Ctrl + L` で新しいチャットを開く
2. **Agent モード**にする（Composer ではなく Chat の Agent モード）
3. 以下をすべてコピペして送信

---

## ↓ ここからプロンプト本体 ↓

ここは初めての Flutter + Rust アプリの立ち上げです。`.cursor/rules/core.mdc`, `.cursor/rules/architecture.mdc`, `.cursor/rules/security.mdc` を読んでください。また、`docs/ARCHITECTURE.md` と `docs/ROADMAP.md` も把握してください。

ロード後、次のスキャフォールド作業を **順番に** お願いします。すべての作業は **小さなコミットに分けて** ください。「ついでに」何かを追加することは禁止です。

## Step 1: Flutter プロジェクト初期化

カレントディレクトリ（suito リポジトリのルート）に Flutter プロジェクトを生成してください。次のコマンドの相当を実行:

```bash
fvm flutter create \
  --org dev.suito \
  --project-name suito \
  --description "Privacy-focused budget tracker with Bitcoin support" \
  --platforms android \
  --no-overwrite \
  .
```

⚠️ プラットフォームは **まず Android のみ**。iOS / macOS / linux / windows / web は不要（後で追加する）。

生成後、`pubspec.yaml` の `description` と `version` を suito 用に書き換えてください（`version: 0.0.1+1`）。

コミット: `chore: scaffold flutter project (android only)`

## Step 2: Flutter 依存関係を追加

次の依存を `pubspec.yaml` に追加してください。**`dart pub add` を使うのではなく、`pubspec.yaml` を直接編集**してください（コミット差分を見やすくするため）。バージョンは **最新の安定版**にしてください。最新版は `@context7` MCP で各パッケージのドキュメントを確認するか、`pub.dev` で確認してください。

**dependencies:**
- `flutter_riverpod`
- `riverpod_annotation`
- `freezed_annotation`
- `json_annotation`
- `hive_ce`（Hive Community Edition、最新版）
- `hive_ce_flutter`
- `path_provider`
- `go_router`
- `fpdart`（Either モナド用）
- `flutter_localizations` (SDK)
- `intl`

**dev_dependencies:**
- `build_runner`
- `freezed`
- `json_serializable`
- `riverpod_generator`
- `hive_ce_generator`
- `mocktail`
- `flutter_lints`

その後、`fvm flutter pub get` を実行してください。

コミット: `chore: add flutter dependencies (riverpod, hive, freezed, etc.)`

## Step 3: Rust ワークスペース初期化

リポジトリルートに `rust/` ディレクトリを作成して、以下の構造で Rust ワークスペースを生成してください。

```
rust/
├── Cargo.toml          # ワークスペース定義
└── src/
    ├── lib.rs
    └── api/
        └── mod.rs
```

`rust/Cargo.toml` の内容:

```toml
[package]
name = "suito_rust"
version = "0.0.1"
edition = "2021"

[lib]
crate-type = ["cdylib", "staticlib"]

[dependencies]
flutter_rust_bridge = "2"
anyhow = "1"
tokio = { version = "1", features = ["rt", "macros"] }

[profile.release]
opt-level = 3
lto = true
codegen-units = 1
strip = true
panic = "abort"
```

`rust/src/lib.rs`:

```rust
pub mod api;
```

`rust/src/api/mod.rs`:

```rust
pub mod greet;
```

`rust/src/api/greet.rs`:

```rust
#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}

#[flutter_rust_bridge::frb]
pub fn greet(name: String) -> String {
    format!("Hello, {} from Rust!", name)
}
```

`cargo build --manifest-path rust/Cargo.toml` で成功することを確認。

コミット: `chore: scaffold rust workspace with flutter_rust_bridge api`

## Step 4: flutter_rust_bridge セットアップ

ルートに `flutter_rust_bridge.yaml` を作成:

```yaml
rust_input: crate::api
rust_root: rust
dart_output: lib/src/rust
```

`generate.sh` を作成（実行権限付き）:

```bash
#!/usr/bin/env bash
set -euo pipefail
flutter_rust_bridge_codegen generate
```

`flutter_rust_bridge` の Dart 側依存を `pubspec.yaml` に追加（`dependencies`）:
- `flutter_rust_bridge`

その後、`./generate.sh` を実行して、`lib/src/rust/` 配下にバインディングが生成されることを確認してください。

⚠️ 生成された `lib/src/rust/**` は `.cursorignore` に既に含まれているのでコミット対象から外れます。**ただし、Flutter ビルドには必要**なので、`.gitignore` から外して **コミットには含める**ようにしてください（meiso 方式）。

`.gitignore` で生成物を除外しない設定を作成してください。

コミット: `chore: setup flutter_rust_bridge codegen`

## Step 5: 最小動作確認（Hello from Rust）

`lib/main.dart` を上書きしてください。内容:
- ProviderScope でラップ
- ホーム画面で `greet("suito")` の戻り値を表示
- 白黒のミニマルなテーマ

具体的なコードは出さず、まず **`lib/main.dart` の現在の内容を見て**、上記要件を満たす **最小限の変更**を提案してから書き換えてください。

`fvm flutter analyze` でエラーゼロを確認後、コミット: `feat: hello from rust via flutter_rust_bridge`

## Step 6: CI 設定（GitHub Actions）

`.github/workflows/ci.yml` を作成。3 つの job:

1. **flutter-check**: `fvm flutter analyze` + `fvm flutter test`
2. **rust-check**: `cargo fmt --check` + `cargo clippy -- -D warnings` + `cargo test`（`rust/` 配下）
3. **bridge-gen-check**: `./generate.sh` した後、`git diff --exit-code` で生成物が最新であることを確認

ワークフローは:
- main へのプッシュ
- main へのプルリクエスト

でトリガー。

コミット: `ci: add github actions for flutter, rust, and bridge codegen`

## Step 7: README.md の最小整備

ルートの `README.md` を作成。次のセクション:

- プロジェクト名と概要（白黒 UI、JPY/USD/BTC、Nostr 同期、Zapstore 配布）
- 参考リポジトリ（meiso へのリンク）
- 開発環境セットアップ手順（fvm、Rust、Node.js、flutter_rust_bridge_codegen）
- ビルドコマンド
- ライセンス（MIT 予定とのメモ）
- アーキテクチャ概要（`docs/ARCHITECTURE.md` へのリンク）
- セキュリティ（`docs/SECURITY_PRIVACY.md` へのリンク）

コミット: `docs: minimal README`

## 完了報告フォーマット

すべての Step が完了したら、次の形式で報告してください:

```
✅ Step 1: flutter create → コミット: <hash>
✅ Step 2: dependencies → コミット: <hash>
✅ Step 3: rust workspace → コミット: <hash>
✅ Step 4: flutter_rust_bridge → コミット: <hash>
✅ Step 5: hello from rust → コミット: <hash>
✅ Step 6: CI → コミット: <hash>
✅ Step 7: README → コミット: <hash>

確認事項:
- [ ] `fvm flutter analyze`: PASS
- [ ] `cargo clippy -- -D warnings`: PASS
- [ ] `./generate.sh && git diff --exit-code`: PASS
- [ ] Android 実機 / エミュレータでビルド成功
- [ ] 起動して "Hello, suito from Rust!" が表示される

次のステップ: `prompts/02_phase0_contracts.md` を流す
```

## 重要な遵守事項

- **1 Step = 1 コミット**。混ぜない
- **各 Step の終わりに必ず `fvm flutter analyze` で確認**
- **わからないこと・不確実なことがあれば、勝手に進めずに質問**して
- **依存のバージョンは Context7 MCP で最新を確認**
- **既存の `.cursorignore`、`.gitignore`、`.cursor/rules/` を一切書き換えない**

これで始めてください。
