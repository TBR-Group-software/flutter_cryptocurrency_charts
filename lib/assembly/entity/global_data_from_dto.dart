import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:clean_app/data/model/market_cap_percentage.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';

class GlobalDataFromDtoFactory implements Factory<GlobalData, GlobalDataDto> {
  final Factory<MarketCapPercentage, MarketCapPercentageDto>
      _marketCapPercentageFactory;
  GlobalDataFromDtoFactory(this._marketCapPercentageFactory);
  @override
  GlobalData create(GlobalDataDto param) => GlobalData(
        param.activeCryptocurrencies,
        param.markets,
        param.marketCapPercentage
            .map((MarketCapPercentageDto dto) =>
                _marketCapPercentageFactory.create(dto))
            .toList(),
      );
}
