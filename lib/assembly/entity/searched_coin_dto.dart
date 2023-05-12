import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/searched_coin.dart';
import 'package:clean_app/domain/entity/searched_coin.dart';

class SearchedCoinFromDtoFactory
    implements Factory<SearchedCoin, SearchedCoinDto> {
  @override
  SearchedCoin create(SearchedCoinDto param) => SearchedCoin(
        param.id,
        param.symbol,
        param.name,
        param.thumb,
        param.marketCap,
      );
}
