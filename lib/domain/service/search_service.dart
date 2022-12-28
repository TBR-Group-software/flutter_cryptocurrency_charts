import 'package:clean_app/domain/entity/coin.dart';

abstract class SearchService {
  Future<List<Coin>> getTrendingCoins();

  Future<List<Coin>> getSearchResults(String query);
}
