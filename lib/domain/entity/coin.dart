class Coin {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  final num? currentPrice;
  final num? marketCap;
  final num? priceChangePercentage;
  final List<dynamic> sparkline;

  Coin(
    this.id,
    this.symbol,
    this.name,
    this.image,
    this.currentPrice,
    this.marketCap,
    this.priceChangePercentage,
    this.sparkline,
  );
}

class TrendingCoin {
  final String? id;
  final String? name;
  final String? image;
  final num? marketCap;

  TrendingCoin(
    this.id,
    this.name,
    this.image,
    this.marketCap,
  );
}
