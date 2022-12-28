import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/search_service.dart';

class RestSearchService implements SearchService {
  final RestGateway _gateway;
  final Factory<Coin, CoinDto> _factory;
  RestSearchService(this._gateway, this._factory);

  @override
  Future<List<Coin>> getSearchResults(String query) async {
    final List<CoinDto> dtoList = await _gateway.getSearchResult(query);

    return dtoList.map((CoinDto coinDto) => _factory.create(coinDto)).toList();
  }

  @override
  Future<List<Coin>> getTrendingCoins() async {
    final List<CoinDto> dtoList = await _gateway.getTrendingCoins();

    return dtoList.map((CoinDto coinDto) => _factory.create(coinDto)).toList();
  }

}