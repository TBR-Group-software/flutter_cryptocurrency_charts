import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/service/search_service.dart';

abstract class GetSearchResultsUseCase {
  Future<List<Coin>> call(String query);
}

class RestGetSearchResultsUseCase implements GetSearchResultsUseCase {
  final SearchService _service;

  RestGetSearchResultsUseCase(this._service);

  @override
  Future<List<Coin>> call(String query) => _service.getSearchResults(query);
}