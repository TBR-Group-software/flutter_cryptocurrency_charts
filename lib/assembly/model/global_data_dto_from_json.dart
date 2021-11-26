import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:clean_app/data/model/market_cap_percentage.dart';

class GlobalDataDtoFromJsonFactory
    implements Factory<GlobalDataDto, Map<String, dynamic>> {
  @override
  GlobalDataDto create(Map<String, dynamic> param) => GlobalDataDto(
        param['active_cryptocurrencies'] as num?,
        param['markets'] as num?,
        (param['market_cap_percentage'] as Map<String, dynamic>)
            .entries
            .map((MapEntry<String, dynamic> entry) =>
                MarketCapPercentageDto(entry.key, entry.value as num?))
            .toList(),
      );
}
