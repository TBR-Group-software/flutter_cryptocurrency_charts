import 'package:clean_app/data/gateway/settings.dart';
import 'package:clean_app/domain/service/settings.dart';

class HiveSettingsService implements SettingsService {
  final SettingsGateway _gateway;
  HiveSettingsService(this._gateway);

  @override
  Future<String> getFiatCurrency() => _gateway.getFiatCurrency();

  @override
  Future<String> selectFiatCurrency(String fiatCurrency) =>
      _gateway.selectFiatCurrency(fiatCurrency);

  @override
  Future<String> getTheme() => _gateway.getTheme();

  @override
  Future<String> selectTheme(String themeType) =>
      _gateway.selectTheme(themeType);
}
