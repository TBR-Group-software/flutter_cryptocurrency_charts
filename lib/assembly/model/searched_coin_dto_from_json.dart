import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/searched_coin.dart';

class SearchedCoinDtoFromJsonFactory
    implements Factory<SearchedCoinDto, Map<String, dynamic>> {
  @override
  SearchedCoinDto create(Map<String, dynamic> param) => SearchedCoinDto(
        param['id'] as String,
        param['symbol'] as String,
        param['name'] as String,
        param['thumb'] as String,
        param['market_cap_rank'] as num?,
      );
}
