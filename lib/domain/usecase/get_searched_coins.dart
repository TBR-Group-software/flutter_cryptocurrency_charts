import 'package:clean_app/domain/entity/coin_brief_model.dart';
import 'package:clean_app/domain/service/search_service.dart';

abstract class GetSearchResultsUseCase {
  Future<List<CoinBriefModel>> call(String query);
}

class RestGetSearchResultsUseCase implements GetSearchResultsUseCase {
  final SearchService _service;

  RestGetSearchResultsUseCase(this._service);

  @override
  Future<List<CoinBriefModel>> call(String query) => _service.getSearchResults(query);
}