import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/coin.dart';

class SearchTrendingCoinsUseCase {
  final CoinService _coinService;

  SearchTrendingCoinsUseCase(this._coinService);

  Future<List<TrendingCoin>> call(String query) async {
    return _coinService.searchTrendingCoins(query);
  }
}
