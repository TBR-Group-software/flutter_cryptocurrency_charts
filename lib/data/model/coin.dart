class CoinDto {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  final num? currentPrice;
  final num? marketCap;
  final num? priceChangePercentage;
  final List<dynamic> sparklineIn7d;
  final Map<String, dynamic>? fiats;

  CoinDto(
      {required this.sparklineIn7d,
      this.id,
      this.symbol,
      this.name,
      this.image,
      this.currentPrice,
      this.marketCap,
      this.priceChangePercentage,
      this.fiats});
}
