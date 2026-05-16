# ARCHITECTURE.md — suito アーキテクチャ概要

## 全体像

```
┌─────────────────────────────────────────────────────────────┐
│                     Flutter (Dart)                          │
│                                                             │
│  Presentation  →  Application  →  Domain                    │
│       (UI)        (UseCase)      (Entity, IF, Failure)      │
│                       ↑               ↑                     │
│                       └───────────────┘                     │
│                              │                              │
│                       Infrastructure                        │
│                  (Hive, Rust bridge, HTTP)                  │
│                              ↓                              │
└──────────────────────────────┼──────────────────────────────┘
                               │ flutter_rust_bridge (FFI)
                               ↓
┌─────────────────────────────────────────────────────────────┐
│                       Rust                                  │
│                                                             │
│   crypto         nostr           bitcoin         api/       │
│   (AES-GCM,      (NIP-44,        (sat 換算,     (公開 FFI)  │
│   Argon2id)      署名)            アドレス検証)             │
│                                                             │
└─────────────────────────────────────────────────────────────┘
                               │
                               ↓
                  ┌──────────────────────┐
                  │  外部サービス        │
                  │  - Nostr relays      │
                  │  - 取引所 API        │
                  │  - 為替 API          │
                  │  - OS Secure Storage │
                  └──────────────────────┘
```

## レイヤーと依存方向

| レイヤー | 場所 | 責務 | 依存先 |
| --- | --- | --- | --- |
| **Presentation** | `lib/features/<f>/presentation/` | UI、ウィジェット、ViewModel | Application, Domain |
| **Application** | `lib/features/<f>/application/` | UseCase | Domain |
| **Domain** | `lib/features/<f>/domain/` | Entity、Repository IF、Failure、UseCase I/O | （依存なし） |
| **Infrastructure** | `lib/features/<f>/infrastructure/` | Repository 実装、DataSource | Domain |
| **Rust** | `rust/src/` | 暗号、Nostr、Bitcoin、機密処理 | （Dart 側から flutter_rust_bridge で呼ばれる） |

依存方向：**Presentation → Application → Domain ← Infrastructure**

## ディレクトリ構成（完全版）

```
suito/
├── android/                            # Android 固有
├── ios/                                # iOS 固有
├── lib/                                # Flutter
│   ├── main.dart                       # エントリ（God File）
│   ├── core/                           # 全 feature 共有
│   │   ├── common/
│   │   │   ├── usecase.dart            # UseCase 基底
│   │   │   └── failure.dart            # Failure 基底
│   │   ├── crypto/                     # 暗号ユーティリティの Dart 側薄ラッパ
│   │   ├── logger/                     # AppLogger
│   │   ├── theme/                      # 白黒テーマ
│   │   ├── routing/                    # go_router（God File）
│   │   └── widgets/                    # 汎用 UI
│   ├── features/
│   │   ├── transaction/                # 取引（収入・支出）
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── transaction.dart
│   │   │   │   │   ├── money.dart
│   │   │   │   │   └── transaction_id.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── transaction_repository.dart
│   │   │   │   ├── failures/
│   │   │   │   │   └── transaction_failure.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── create_transaction_io.dart
│   │   │   │       ├── list_transactions_io.dart
│   │   │   │       └── delete_transaction_io.dart
│   │   │   ├── application/
│   │   │   │   └── usecases/
│   │   │   │       ├── create_transaction_usecase.dart
│   │   │   │       ├── list_transactions_usecase.dart
│   │   │   │       └── delete_transaction_usecase.dart
│   │   │   ├── infrastructure/
│   │   │   │   ├── repositories/
│   │   │   │   │   └── hive_transaction_repository.dart
│   │   │   │   └── datasources/
│   │   │   │       └── transaction_local_datasource.dart
│   │   │   └── presentation/
│   │   │       ├── pages/
│   │   │       │   ├── transaction_list_page.dart
│   │   │       │   └── transaction_edit_page.dart
│   │   │       ├── widgets/
│   │   │       │   ├── transaction_tile.dart
│   │   │       │   └── amount_input.dart
│   │   │       └── providers/
│   │   │           └── transaction_provider.dart
│   │   ├── category/                   # カテゴリ（食費・交通費等）
│   │   ├── calendar/                   # カレンダー表示
│   │   ├── exchange/                   # 為替・BTC レート
│   │   ├── bitcoin/                    # Bitcoin 支払い記録
│   │   ├── nostr_sync/                 # Nostr 同期
│   │   ├── settings/                   # 設定
│   │   └── receipt_ocr/                # レシート OCR（将来）
│   └── providers/
│       └── app_providers.dart          # トップレベル DI（God File）
├── rust/
│   ├── Cargo.toml
│   └── src/
│       ├── lib.rs                      # ライブラリエントリ（God File）
│       ├── api/                        # flutter_rust_bridge 公開関数
│       │   ├── mod.rs
│       │   ├── crypto.rs
│       │   ├── nostr.rs
│       │   ├── bitcoin.rs
│       │   ├── exchange.rs
│       │   └── secure_storage.rs
│       ├── crypto/                     # AES-GCM, Argon2id
│       ├── nostr/                      # Nostr プロトコル
│       └── bitcoin/                    # Bitcoin 関連
├── test/                               # Dart テスト
├── docs/                               # 設計ドキュメント
├── .cursor/                            # Cursor ハーネス
├── prompts/                            # Cursor チャット用プロンプト
├── pubspec.yaml
├── Cargo.toml                          # ワークスペース定義
├── flutter_rust_bridge.yaml            # FFI 設定
├── generate.sh                         # FFI コード生成スクリプト
└── zapstore.yaml                       # Zapstore 配布設定
```

## 主要な型（Phase 0 で確定するもの）

### `Transaction`（取引エンティティ）

```dart
@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required TransactionId id,
    required TransactionType type,  // income or expense
    required Money amount,
    required CategoryId categoryId,
    required DateTime occurredAt,
    required PaymentMethod paymentMethod, // cash, card, bitcoin, etc.
    String? memo,
    BitcoinRecordSnapshot? bitcoinSnapshot, // BTC 支払い時のみ
  }) = _Transaction;
}

enum TransactionType { income, expense }
enum PaymentMethod { cash, card, bankTransfer, bitcoin, other }
```

### `Money`（金額）

```dart
@freezed
sealed class Money with _$Money {
  const Money._();
  const factory Money.jpy({required int amount}) = JpyMoney;
  const factory Money.usd({required int cents}) = UsdMoney;
  const factory Money.sat({required int amount}) = SatMoney;
}
```

### `BitcoinRecordSnapshot`（BTC 支払い時の当時レート）

```dart
@freezed
class BitcoinRecordSnapshot with _$BitcoinRecordSnapshot {
  const factory BitcoinRecordSnapshot({
    required int satAmount,
    required int jpyAtRecordTime,
    required int usdCentsAtRecordTime,
    required int btcJpyRate,
    required int btcUsdCentRate,
    required DateTime recordedAt,
  }) = _BitcoinRecordSnapshot;
}
```

### `Category`（カテゴリ）

```dart
@freezed
class Category with _$Category {
  const factory Category({
    required CategoryId id,
    required String name,
    required CategoryKind kind, // income or expense
    required String icon,        // emoji or icon name
    required int colorHex,
    required bool isCustom,      // user-created
  }) = _Category;
}
```

## デフォルトカテゴリ

**支出**: 食費 🍴 / 交通費 🚆 / 日用品 🧴 / 雑費 💰 / 光熱費 💡 / 家賃 🏠 / 通信費 📱 / 医療費 🏥 / 娯楽 🎮 / 衣類 👕

**収入**: 給料 💼 / 臨時収入 🎁 / 投資 📈 / 返金 ↩️ / その他 ✨

## 状態管理（Riverpod）

- Provider は `lib/features/<f>/presentation/providers/*.dart` に置く
- トップレベル DI（Repository、UseCase 実装の差し替え）は `lib/providers/app_providers.dart`（God File）
- `@riverpod` アノテーション + `riverpod_generator` で書く

## ローカル保存（Hive）

| Box 名 | 内容 | 暗号化 |
| --- | --- | --- |
| `transactions_box` | 取引一覧 | ✓ |
| `categories_box` | カテゴリ一覧 | ✓ |
| `settings_box` | アプリ設定 | △（個別） |
| `exchange_cache_box` | レートキャッシュ | × |

暗号化鍵は **Rust 経由で OS のセキュアストレージ**から取得。

## 外部サービス連携

| サービス | 用途 | 認証 | 暗号化 |
| --- | --- | --- | --- |
| Nostr リレー | データ同期 | npub/nsec | NIP-44 v2 |
| bitFlyer / Coincheck | BTC/JPY レート | 不要（公開 API） | HTTPS |
| Coinbase / Kraken | BTC/USD レート | 不要 | HTTPS |
| exchangerate.host | USD/JPY レート | 不要 | HTTPS |
| OS Keychain/Keystore | 鍵保管 | OS 認証 | OS 標準 |
