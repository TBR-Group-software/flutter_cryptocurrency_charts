import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/search_service.dart';

abstract class GetSingleCoinDataUseCase {
  Future<Coin> call(String id, String currency);
}

class RestGetSingleCoinDataUseCase implements GetSingleCoinDataUseCase {
  final SearchService _service;

  RestGetSingleCoinDataUseCase(this._service);

  @override
  Future<Coin> call(String id, String currency) =>
      _service.getCoinByID(id, currency);
}
