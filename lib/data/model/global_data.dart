import 'package:clean_app/data/model/market_cap_percentage.dart';

class GlobalDataDto {
  final num? activeCryptocurrencies, markets;
  final List<MarketCapPercentageDto> marketCapPercentage;

  GlobalDataDto(
    this.activeCryptocurrencies,
    this.markets,
    this.marketCapPercentage,
  );
}
