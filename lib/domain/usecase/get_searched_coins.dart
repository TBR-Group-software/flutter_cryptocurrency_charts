import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/domain/service/coin.dart';

abstract class GetSearchedCoinsUseCase {
  Future<List<SearchedCoin>> call(
    String searchQuery,
  );
}

class RestGetSearchedCoinsUseCase implements GetSearchedCoinsUseCase {
  final CoinService _service;

  RestGetSearchedCoinsUseCase(this._service);

  @override
  Future<List<SearchedCoin>> call(String searchQuery) =>
      _service.searchRequest(searchQuery);
}
