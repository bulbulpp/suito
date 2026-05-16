import 'package:fpdart/fpdart.dart';

import '../entities/app_settings.dart';
import '../failures/settings_failure.dart';

/// アプリ設定を永続化する Repository の契約。
///
/// 1 ユーザー = 1 レコードのシングルトン的扱い。初回起動時に
/// [AppSettings.initialDefault] を書き込む責務は Infrastructure 側。
abstract interface class SettingsRepository {
  /// 現在の設定を取得する。
  ///
  /// 未初期化なら [SettingsFailure.notInitialized]。
  Future<Either<SettingsFailure, AppSettings>> get();

  /// 設定を更新する（部分更新ではなく全置換）。
  ///
  /// `updatedAt` は Infrastructure 側で書き込み時刻に再採番する。
  Future<Either<SettingsFailure, AppSettings>> update(AppSettings settings);

  /// 設定の変更通知ストリーム。
  ///
  /// テーマや言語の即時反映に使う。実装が難しい場合は `Stream.empty()`。
  Stream<AppSettings> watch();
}
