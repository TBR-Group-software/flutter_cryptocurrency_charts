import 'package:clean_app/domain/entity/coin_info.dart';
import 'package:clean_app/domain/service/coin.dart';

abstract class GetMarketCoinInfoUseCase {
  Future<CoinInfo> call(
    String searchQuery,
  );
}

class RestGetMarketCoinInfoUseCase implements GetMarketCoinInfoUseCase {
  final CoinService _service;

  RestGetMarketCoinInfoUseCase(this._service);

  @override
  Future<CoinInfo> call(String coinId) => _service.getMarketCoinInfo(coinId);
}
