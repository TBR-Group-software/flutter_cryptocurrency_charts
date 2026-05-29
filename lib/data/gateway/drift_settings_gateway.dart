import 'package:clean_app/data/dao/app_settings_dao.dart';
import 'package:clean_app/data/database/app_database.dart';
import 'package:clean_app/data/gateway/constants.dart';

class DriftSettingsGateway {
  static const String _fiatCurrencyKey = 'fiatCurrency';
  static const String _themeTypeKey = 'themeType';
  static const String _defaultTheme = 'night';
  static const String _hiveMigrationCompletedKey = 'hive_migration_completed';

  final AppSettingsDao _dao;

  DriftSettingsGateway(AppDatabase database) : _dao = database.appSettingsDao;

  Future<bool> isMigrationFromHiveCompleted() async =>
      (await _dao.readValue(_hiveMigrationCompletedKey)) == 'true';

  Future<void> markMigrationFromHiveCompleted() =>
      _dao.writeValue(_hiveMigrationCompletedKey, 'true');

  Future<String> getFiatCurrency() async {
    final String? stored = await _dao.readValue(_fiatCurrencyKey);
    if (stored != null) return stored;
    await _dao.writeValue(_fiatCurrencyKey, currencyUSD);
    return currencyUSD;
  }

  Future<String> selectFiatCurrency(String selectedFiatCurrency) async {
    await _dao.writeValue(_fiatCurrencyKey, selectedFiatCurrency);
    return selectedFiatCurrency;
  }

  Future<String> getTheme() async {
    final String? stored = await _dao.readValue(_themeTypeKey);
    if (stored != null) return stored;
    await _dao.writeValue(_themeTypeKey, _defaultTheme);
    return _defaultTheme;
  }

  Future<String> selectTheme(String selectedThemeType) async {
    await _dao.writeValue(_themeTypeKey, selectedThemeType);
    return selectedThemeType;
  }
}
