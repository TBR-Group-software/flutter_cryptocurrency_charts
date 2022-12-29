class CoinBriefData {
  final String id;
  final String name;
  final String thumb;
  final int marketCapRank;

  CoinBriefData({
    required this.id,
    required this.name,
    required this.thumb,
    required this.marketCapRank,
  });

  factory CoinBriefData.fromJson(Map<String, dynamic> json) {
    return CoinBriefData(
      id: json['id'] as String,
      name: json['name'] as String,
      thumb: json['thumb'] as String,
      marketCapRank: json['market_cap_rank'] as int,
    );
  }
}
