# AGENTS.md — Cursor 以外のエージェント（Claude Code 等）向けエントリ

このファイルは Cursor 以外の AI エージェント（Claude Code、Codex、Cline 等）が
プロジェクトを理解するための入り口。

**Cursor を使う場合は `.cursor/rules/*.mdc` が優先される**。このファイルはサブセット。

## クイックリファレンス

- **プロジェクト**: suito（家計簿アプリ、Flutter + Rust + Nostr + Bitcoin）
- **参考**: <https://github.com/higedamc/meiso>
- **アーキテクチャ**: Feature-based Clean Architecture
- **配布**: Zapstore
- **詳細ルール**: `.cursor/rules/` 配下を全て読むこと（Cursor 以外でも .mdc は普通の Markdown として読める）

## 必読ドキュメント順

1. `.cursor/rules/core.mdc` — プロジェクト常時ルール
2. `.cursor/rules/security.mdc` — セキュリティ要件
3. `.cursor/rules/architecture.mdc` — レイヤー構成
4. `docs/ARCHITECTURE.md` — 詳細設計
5. `docs/SECURITY_PRIVACY.md` — 脅威モデル
6. `docs/FEATURES.md` — 機能仕様
7. `docs/LEAF_NODE_STRATEGY.md` — 並列開発の分解計画
8. `docs/ROADMAP.md` — マイルストーン

言語特化のときに参照:
- `.cursor/rules/flutter-dart.mdc` — Dart/Flutter コードを書くとき
- `.cursor/rules/rust.mdc` — Rust コードを書くとき
- `.cursor/rules/nostr.mdc` — Nostr プロトコル関連
- `.cursor/rules/bitcoin.mdc` — Bitcoin / 取引所 API 関連
- `.cursor/rules/leaf-node.mdc` — タスク分解時

## Leaf Node 5 原則

1. 契約を先に決める
2. 新規ファイル作成を優先
3. God File には 1 エージェントのみ
4. Feature 境界を尊重
5. 統合は内側から（Domain → App → Infra → Pres）

## 絶対禁止

- 秘密鍵 / トークンをコード・コミット・ログに含めない
- `.env`, `secrets/**`, `*.keystore` を読まない
- `main` への直接コミットしない
- 複数の関心事を 1 PR に混ぜない
- God File の複数 Leaf 同時編集
- 生成物（`.g.dart`, `.freezed.dart`, `bridge_generated.dart`）を Leaf PR に含めない
