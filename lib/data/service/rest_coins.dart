import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/backbone/rest_api_urls.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/coin.dart';

class RestCoinService implements CoinService {
  final RestGateway _gateway;
  final Factory<Coin, CoinDto> _factory;
  final Factory<TrendingCoin, TrendingCoinDto> _trendingFactory;
  RestCoinService(this._gateway, this._factory, this._trendingFactory);

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

  @override
  Future<List<TrendingCoin>> getTrendingCoins() async {
    final List<TrendingCoinDto> dtoList =
        await _gateway.getTrendingCoins(searchTrendingUrl);
    return dtoList
        .map((TrendingCoinDto dto) => _trendingFactory.create(dto))
        .toList();
  }

  @override
  Future<List<TrendingCoin>> searchTrendingCoins(String query) async {
    final List<TrendingCoinDto> dtoList =
        await _gateway.getTrendingCoins(searchTrendingUrl);

    return dtoList
        .where((TrendingCoinDto dto) {
          final String? name = dto.name;
          return name != null &&
              name.toLowerCase().contains(query.toLowerCase());
        })
        .map((TrendingCoinDto dto) => _trendingFactory.create(dto))
        .toList();
  }
}
