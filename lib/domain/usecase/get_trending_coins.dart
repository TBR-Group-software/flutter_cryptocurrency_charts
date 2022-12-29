import 'package:clean_app/domain/entity/coin_brief_model.dart';

import 'package:clean_app/domain/service/search_service.dart';

abstract class GetTrendingCoinsUseCase {
  Future<List<CoinBriefModel>> call();
}

class RestGetTrendingCoinsUseCase implements GetTrendingCoinsUseCase {
  final SearchService _service;

  RestGetTrendingCoinsUseCase(this._service);

  @override
  Future<List<CoinBriefModel>> call() => _service.getTrendingCoins();
}
