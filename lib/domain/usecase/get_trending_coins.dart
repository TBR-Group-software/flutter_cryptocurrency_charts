import 'package:clean_app/domain/entity/coin.dart';

import 'package:clean_app/domain/service/search_service.dart';

abstract class GetTrendingCoinsUseCase {
  Future<List<Coin>> call();
}

class RestGetTrendingCoinsUseCase implements GetTrendingCoinsUseCase {
  final SearchService _service;

  RestGetTrendingCoinsUseCase(this._service);

  @override
  Future<List<Coin>> call() => _service.getTrendingCoins();
}
