# CLAUDE.md — Claude Code を併用する場合の入り口

Claude Code（ターミナル CLI）で suito を扱うときの常時ロード文書。
基本ルールは `AGENTS.md` および `.cursor/rules/*.mdc` を参照（同一内容）。

## プロジェクト要点

- **suito**: Flutter + Rust の家計簿アプリ
- **参考**: <https://github.com/higedamc/meiso>
- **基調デザイン**: 白黒
- **特徴**: 法定通貨 + Bitcoin（sat）両対応、Nostr 同期、Zapstore 配布

## 必読

- `.cursor/rules/core.mdc`
- `.cursor/rules/security.mdc`
- `.cursor/rules/architecture.mdc`
- `docs/LEAF_NODE_STRATEGY.md`

## Leaf Node 5 原則（暗記）

1. 契約を先に決める
2. 新規ファイル作成を優先
3. God File には 1 エージェントのみ
4. Feature 境界を尊重
5. 統合は内側から

## 推奨セッション開始時の確認

新しい Claude Code セッションを始めるときは、以下のコマンドで context を確認:

```bash
# 現在のブランチを確認
git status
git branch --show-current

# Phase / Leaf を確認
cat docs/ROADMAP.md | head -50

# 何が触られているか確認
git diff --name-only origin/main..HEAD
```

## このプロジェクトでやってはいけないこと

- 秘密鍵 / トークンの取り扱い → 全て Rust 側で完結させる
- `main` への push（必ず Leaf ブランチ → PR）
- 「ついでに」フォーマット修正やリファクタを混ぜる
- 生成物（`*.g.dart`, `*.freezed.dart`, `bridge_generated.dart`）を Leaf PR に含める
- God File を複数エージェントで同時編集

## 推奨コマンド

```bash
# Flutter 関連
fvm flutter pub get
fvm flutter analyze
fvm flutter test
fvm dart run build_runner build --delete-conflicting-outputs

# Rust 関連
cargo build --manifest-path rust/Cargo.toml
cargo test --manifest-path rust/Cargo.toml
cargo clippy --manifest-path rust/Cargo.toml -- -D warnings
cargo fmt --manifest-path rust/Cargo.toml --check

# flutter_rust_bridge コード生成
flutter_rust_bridge_codegen generate
```
