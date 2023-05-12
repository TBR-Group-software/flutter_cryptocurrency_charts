import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/domain/entity/coin.dart';

class CoinFromDtoFactory implements Factory<Coin, CoinDto> {
  @override
  Coin create(CoinDto param) => Coin(
        id: param.id,
        symbol: param.symbol,
        name: param.name,
        image: param.image,
        currentPrice: param.currentPrice,
        marketCap: param.marketCap,
        priceChangePercentage: param.priceChangePercentage,
        sparkline: param.sparklineIn7d,
      );
}
