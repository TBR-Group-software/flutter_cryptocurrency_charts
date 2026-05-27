import 'package:clean_app/data/database/app_database.dart';
import 'package:clean_app/data/gateway/constants.dart';

class DriftSettingsGateway {
  static const String _fiatCurrencyKey = 'fiatCurrency';
  static const String _themeTypeKey = 'themeType';
  static const String _defaultTheme = 'night';
  static const String _hiveMigrationCompletedKey = 'hive_migration_completed';

  final AppDatabase _database;

  DriftSettingsGateway(this._database);

  Future<bool> isMigrationFromHiveCompleted() async =>
      (await _readValue(_hiveMigrationCompletedKey)) == 'true';

  Future<void> markMigrationFromHiveCompleted() =>
      _writeValue(_hiveMigrationCompletedKey, 'true');

  Future<String> getFiatCurrency() async {
    final String? stored = await _readValue(_fiatCurrencyKey);
    if (stored != null) {
      return stored;
    }
    await _writeValue(_fiatCurrencyKey, currencyUSD);
    return currencyUSD;
  }

  Future<String> selectFiatCurrency(String selectedFiatCurrency) async {
    await _writeValue(_fiatCurrencyKey, selectedFiatCurrency);
    return selectedFiatCurrency;
  }

  Future<String> getTheme() async {
    final String? stored = await _readValue(_themeTypeKey);
    if (stored != null) {
      return stored;
    }
    await _writeValue(_themeTypeKey, _defaultTheme);
    return _defaultTheme;
  }

  Future<String> selectTheme(String selectedThemeType) async {
    await _writeValue(_themeTypeKey, selectedThemeType);
    return selectedThemeType;
  }

  Future<String?> _readValue(String key) async {
    final AppSetting? row = await (_database.select(_database.appSettings)
          ..where(($AppSettingsTable t) => t.key.equals(key)))
        .getSingleOrNull();
    return row?.value;
  }

  Future<void> _writeValue(String key, String value) {
    return _database.into(_database.appSettings).insertOnConflictUpdate(
          AppSettingsCompanion.insert(
            key: key,
            value: value,
          ),
        );
  }
}
