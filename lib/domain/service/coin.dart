import 'package:clean_app/domain/entity/coin.dart';

abstract class CoinService {
  Future<List<Coin>> getMarketsCoins(
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  );
}
