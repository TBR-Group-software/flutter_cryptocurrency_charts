import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/coin.dart';

class GetTrendingCoinsUseCase {
  final CoinService _coinService;

  GetTrendingCoinsUseCase(this._coinService);

  Future<List<TrendingCoin>> call() async {
    return _coinService.getTrendingCoins();
  }
}
