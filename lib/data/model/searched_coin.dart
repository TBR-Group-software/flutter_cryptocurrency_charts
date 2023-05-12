class SearchedCoinDto {
  final String id;
  final String symbol;
  final String name;
  final String thumb;
  final num? marketCap;

  SearchedCoinDto(
    this.id,
    this.symbol,
    this.name,
    this.thumb,
    this.marketCap,
  );
}
