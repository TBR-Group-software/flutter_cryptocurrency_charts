import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin.dart';

class CoinDtoFromJsonFactory implements Factory<CoinDto, Map<String, dynamic>> {
  @override
  CoinDto create(Map<String, dynamic> param) => CoinDto(
        param['id'] as String?,
        param['symbol'] as String?,
        param['name'] as String?,
        param['image'] as String?,
        param['current_price'] as num?,
        param['market_cap'] as num?,
        param['price_change_percentage_24h'] as num?,
        param['sparkline_in_7d']['price'] as List<dynamic>,
      );
}

class TrendingCoinDtoFromJsonFactory
    implements Factory<TrendingCoinDto, Map<String, dynamic>> {
  @override
  TrendingCoinDto create(Map<String, dynamic> param) => TrendingCoinDto(
        param['id'] as String?,
        param['name'] as String?,
        param['thumb'] as String?,
        param['market_cap_rank'] as num?,
      );
}
