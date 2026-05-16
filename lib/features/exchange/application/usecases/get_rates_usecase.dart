import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/entities/exchange_rate.dart';
import '../../domain/failures/exchange_failure.dart';
import '../../domain/repositories/exchange_repository.dart';
import '../../domain/usecases/get_rates_io.dart';

/// 公開レートをまとめて取得するユースケース。
///
/// [ExchangeRepository.getRates] を呼び出し、[GetRatesResult.isFromCache] は
/// 直前の [ExchangeRepository.getCachedRates] と結果が一致するかで推定する。
/// Repository の 60 秒メモリキャッシュと同じ意味の「今回ネットを叩かなかった」判定。
class GetRatesUseCase
    extends UseCase<ExchangeFailure, GetRatesParams, GetRatesResult> {
  GetRatesUseCase(this._repository);

  final ExchangeRepository _repository;

  @override
  Future<Either<ExchangeFailure, GetRatesResult>> call(
    GetRatesParams params,
  ) async {
    final cachedBefore = await _repository.getCachedRates();
    final result = await _repository.getRates(
      forceRefresh: params.forceRefresh,
    );

    return result.map(
      (rates) => GetRatesResult(
        rates: rates,
        isFromCache: !params.forceRefresh &&
            cachedBefore.isNotEmpty &&
            _sameRates(cachedBefore, rates),
      ),
    );
  }
}

bool _sameRates(List<ExchangeRate> a, List<ExchangeRate> b) {
  if (a.length != b.length) {
    return false;
  }
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}
