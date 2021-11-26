import 'package:clean_app/domain/entity/market_cap_percentage.dart';

class GlobalData {
  final num? activeCryptocurrencies, markets;
  final List<MarketCapPercentage> marketCapPercentage;

  GlobalData(
    this.activeCryptocurrencies,
    this.markets,
    this.marketCapPercentage,
  );
}
