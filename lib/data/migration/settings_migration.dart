import 'package:clean_app/data/gateway/drift_settings_gateway.dart';
import 'package:clean_app/data/gateway/hive_settings_gateway.dart';

class SettingsMigration {
  final HiveSettingsGateway _hiveGateway;
  final DriftSettingsGateway _driftGateway;

  SettingsMigration(this._hiveGateway, this._driftGateway);

  Future<void> migrateIfNeeded() async {
    if (await _driftGateway.isMigrationFromHiveCompleted()) {
      return;
    }

    final String? fiatCurrency = await _hiveGateway.readFiatCurrency();
    if (fiatCurrency != null) {
      await _driftGateway.selectFiatCurrency(fiatCurrency);
    }

    final String? theme = await _hiveGateway.readTheme();
    if (theme != null) {
      await _driftGateway.selectTheme(theme);
    }

    await _driftGateway.markMigrationFromHiveCompleted();
  }
}
