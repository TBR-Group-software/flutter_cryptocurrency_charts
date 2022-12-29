import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/coin_brief_data.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_brief_model.dart';
import 'package:clean_app/domain/service/search_service.dart';

class RestSearchService implements SearchService {
  final RestGateway _gateway;
  final Factory<Coin, CoinDto> _factory;

  RestSearchService(this._gateway, this._factory);

  @override
  Future<List<CoinBriefModel>> getSearchResults(String query) async {
    final List<CoinBriefData> dtoList = await _gateway.getSearchByQuery(query);

    return dtoList
        .map((CoinBriefData data) => CoinBriefModel.fromDTO(data))
        .toList();
  }

  @override
  Future<List<CoinBriefModel>> getTrendingCoins() async {
    final List<CoinBriefData> dtoList = await _gateway.getTrendingCoins();

    return dtoList
        .map((CoinBriefData data) => CoinBriefModel.fromDTO(data))
        .toList();
  }

  @override
  Future<Coin> getCoinByID(String id, String currency) async {
    final CoinDto coinData = await _gateway.getSingleCoinData(id, currency);
    return _factory.create(coinData);
  }
}
