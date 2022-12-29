import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_brief_model.dart';

abstract class SearchService {
  Future<List<CoinBriefModel>> getTrendingCoins();

  Future<List<CoinBriefModel>> getSearchResults(String query);

  Future<Coin> getCoinByID(String id, String currency);
}
