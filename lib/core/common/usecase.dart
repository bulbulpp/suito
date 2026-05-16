import 'package:fpdart/fpdart.dart';

import 'failure.dart';

/// 全 UseCase が継承する基底クラス。
///
/// - [F]: その UseCase が返し得る失敗型（基本は feature 固有の sealed Failure）
/// - [P]: 入力パラメータ型（パラメータ無しなら [NoParams] を使う）
/// - [R]: 成功時の戻り値型
///
/// 実装は必ず `Future<Either<F, R>> call(P params)` を返す。
/// 例外を投げない（投げる場合は Infrastructure 層で握りつぶし、Either に変換する）。
abstract class UseCase<F, P, R> {
  const UseCase();

  Future<Either<F, R>> call(P params);
}

/// 引数を取らない UseCase 用のプレースホルダ。
///
/// `class GetSomethingUseCase extends UseCase<MyFailure, NoParams, Result>` のように使う。
class NoParams {
  const NoParams();
}

/// 共通 Failure を返す UseCase の typedef（feature 固有 Failure を持たないとき用）。
typedef CommonUseCase<P, R> = UseCase<Failure, P, R>;
