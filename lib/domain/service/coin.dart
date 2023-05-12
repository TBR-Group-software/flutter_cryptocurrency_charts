import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_info.dart';
import 'package:clean_app/domain/entity/searched_coin.dart';

abstract class CoinService {
  Future<List<Coin>> getMarketsCoins(
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  );
  Future<List<SearchedCoin>> searchRequest(String searchQuery);
  Future<List<SearchedCoin>> getTrendingCoins();
  Future<CoinInfo> getMarketCoinInfo(String coinId);
}
