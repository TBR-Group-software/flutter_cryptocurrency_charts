import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/domain/entity/coin.dart';

class CoinFromDtoFactory implements Factory<Coin, CoinDto> {
  @override
  Coin create(CoinDto param) => Coin(
        param.id,
        param.symbol,
        param.name,
        param.image,
        param.currentPrice,
        param.marketCap,
        param.priceChangePercentage,
        param.sparklineIn7d,
      );
}
