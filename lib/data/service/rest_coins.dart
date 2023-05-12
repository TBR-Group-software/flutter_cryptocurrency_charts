import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/coin_info.dart';
import 'package:clean_app/data/model/searched_coin.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_info.dart';
import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/domain/service/coin.dart';

class RestCoinService implements CoinService {
  final RestGateway _gateway;
  final Factory<Coin, CoinDto> _factory;
  final Factory<SearchedCoin, SearchedCoinDto> _searchedFactory;
  final Factory<CoinInfo, CoinInfoDto> _coinInfoFactory;
  RestCoinService(this._gateway, this._factory, this._searchedFactory,
      this._coinInfoFactory);
  @override
  Future<List<SearchedCoin>> getTrendingCoins() async {
    final List<SearchedCoinDto> dtoList = await _gateway.getTrendingCoins();
    return dtoList
        .map((SearchedCoinDto dto) => _searchedFactory.create(dto))
        .toList();
  }

  @override
  Future<List<SearchedCoin>> searchRequest(String searchQuery) async {
    final List<SearchedCoinDto> dtoList =
        await _gateway.getSearchedCoins(searchQuery);
    return dtoList
        .map((SearchedCoinDto dto) => _searchedFactory.create(dto))
        .toList();
  }

  @override
  Future<CoinInfo> getMarketCoinInfo(String coinId) async {
    final CoinInfoDto coinDto = await _gateway.getMarketsCoinInfo(coinId);
    return _coinInfoFactory.create(coinDto);
  }

  @override
  Future<List<Coin>> getMarketsCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) async {
    final List<CoinDto> dtoList = await _gateway.getMarketsCoins(
      currency,
      order,
      pageNumber,
      perPage,
      sparkline,
    );
    return dtoList.map((CoinDto dto) => _factory.create(dto)).toList();
  }
}
