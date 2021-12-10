abstract class SettingsService {
  Future<String> selectFiatCurrency(String fiatCurrency);
  Future<String> getFiatCurrency();
  Future<String> selectTheme(String themeType);
  Future<String> getTheme();
}
