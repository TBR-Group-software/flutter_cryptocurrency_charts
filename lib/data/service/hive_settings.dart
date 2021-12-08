import 'package:clean_app/data/gateway/settings.dart';
import 'package:clean_app/domain/service/settings.dart';

class HiveSettingsSerivce implements SettingsService {
  final SettingsGateway _gateway;
  HiveSettingsSerivce(this._gateway);

  @override
  Future<String> getFiatCurrency() => _gateway.getFiatCurrency();

  @override
  Future<String> selectFiatCurrency(String fiatCurrency) =>
      _gateway.selectFiatCurrency(fiatCurrency);
}
