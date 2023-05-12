class Coin {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  final num? currentPrice;
  final num? marketCap;
  final num? priceChangePercentage;
  final List<dynamic> sparkline;
  final Map<String, dynamic>? fiats;

  Coin(
      {required this.sparkline,
      this.id,
      this.symbol,
      this.name,
      this.image,
      this.currentPrice,
      this.marketCap,
      this.priceChangePercentage,
      this.fiats});
}
