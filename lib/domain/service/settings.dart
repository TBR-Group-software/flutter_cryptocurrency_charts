abstract class SettingsService {
  Future<String> selectFiatCurrency(String fiatCurrency);
  Future<String> getFiatCurrency();
}
