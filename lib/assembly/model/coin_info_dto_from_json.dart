import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin_info.dart';

class CoinInfoDtoFromJsonFactory
    implements Factory<CoinInfoDto, Map<String, dynamic>> {
  @override
  CoinInfoDto create(Map<String, dynamic> param) {
    return CoinInfoDto(
        id: param['id'] as String?,
        symbol: param['symbol'] as String?,
        name: param['name'] as String?,
        image: param['image']['thumb'] as String?,
        marketCap: param['market_cap_rank'] as num?,
        priceChangePercentage:
            param['market_data']['price_change_percentage_24h'] as num?,
        sparklineIn7d:
            param['market_data']['sparkline_7d']['price'] as List<dynamic>,
        fiats: param['market_data']['current_price'] as Map<String, dynamic>);
  }
}
