import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/market_cap_percentage.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';

class MarketCapPercentageFromDtoFactory
    implements Factory<MarketCapPercentage, MarketCapPercentageDto> {
  @override
  MarketCapPercentage create(MarketCapPercentageDto param) =>
      MarketCapPercentage(
        param.coinSymbol,
        param.percentage,
      );
}
