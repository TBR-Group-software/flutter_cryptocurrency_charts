import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin.dart';

class CoinDtoFromJsonFactory implements Factory<CoinDto, Map<String, dynamic>> {
  @override
  CoinDto create(Map<String, dynamic> param) => CoinDto(
        id: param['id'] as String?,
        symbol: param['symbol'] as String?,
        name: param['name'] as String?,
        image: param['image'] as String?,
        currentPrice: param['current_price'] as num?,
        marketCap: param['market_cap'] as num?,
        priceChangePercentage: param['price_change_percentage_24h'] as num?,
        sparklineIn7d: param['sparkline_in_7d']['price'] as List<dynamic>,
      );
}
