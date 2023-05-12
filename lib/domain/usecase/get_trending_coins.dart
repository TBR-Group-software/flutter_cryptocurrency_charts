import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/domain/service/coin.dart';

abstract class GetTrendingCoinsUseCase {
  Future<List<SearchedCoin>> call();
}

class RestGetTrendingCoinsUseCase implements GetTrendingCoinsUseCase {
  final CoinService _service;

  RestGetTrendingCoinsUseCase(this._service);

  @override
  Future<List<SearchedCoin>> call() => _service.getTrendingCoins();
}
