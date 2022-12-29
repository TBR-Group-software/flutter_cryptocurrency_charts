import 'package:clean_app/data/model/coin_brief_data.dart';

class CoinBriefModel {
  final String id;
  final String name;
  final String thumb;
  final int marketCapRank;

  CoinBriefModel({
    required this.id,
    required this.name,
    required this.thumb,
    required this.marketCapRank,
  });

  factory CoinBriefModel.fromDTO(CoinBriefData data) {
    return CoinBriefModel(
      id: data.id,
      name: data.name,
      thumb: data.thumb,
      marketCapRank: data.marketCapRank,
    );
  }
}
