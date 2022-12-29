class CoinDto {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  final num? currentPrice;
  final num? marketCap;
  final num? priceChangePercentage;
  final List<dynamic>? sparklineIn7d;

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

  factory CoinDto.fromIDJson(Map<String, dynamic> json, String currency) {
    final Map<String, dynamic> marketData =
    json['market_data'] as Map<String, dynamic>;
    return CoinDto(
      json['id'] as String?,
      json['symbol'] as String?,
      json['name'] as String?,
      json['image']['thumb'] as String?,
      marketData['current_price'][currency] as num?,
      marketData['market_cap'][currency] as num?,
      marketData['price_change_percentage_24h'] as num?,
      marketData['sparkline_7d']?['price'] as List<dynamic>?,
    );
  }
}
