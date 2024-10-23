class CoinDto {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  final num? currentPrice;
  final num? marketCap;
  final num? priceChangePercentage;
  final List<dynamic> sparklineIn7d;

  CoinDto(
    this.id,
    this.symbol,
    this.name,
    this.image,
    this.currentPrice,
    this.marketCap,
    this.priceChangePercentage,
    this.sparklineIn7d,
  );
}

class TrendingCoinDto {
  final String? id;
  final String? name;
  final String? image;
  final num? marketCap;

  TrendingCoinDto(
    this.id,
    this.name,
    this.image,
    this.marketCap,
  );
}
