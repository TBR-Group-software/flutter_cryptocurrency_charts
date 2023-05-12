import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/coin_info.dart';
import 'package:clean_app/domain/entity/coin_info.dart';

class CoinInfoFromDtoFactory implements Factory<CoinInfo, CoinInfoDto> {
  @override
  CoinInfo create(CoinInfoDto param) => CoinInfo(
      id: param.id,
      symbol: param.symbol,
      name: param.name,
      image: param.image,
      marketCap: param.marketCap,
      priceChangePercentage: param.priceChangePercentage,
      sparklineIn7d: param.sparklineIn7d,
      fiats: param.fiats);
}
