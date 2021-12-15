import 'package:clean_app/data/gateway/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingsGateway {
  Box<String>? _testBox;
  Box<String>? _darkThemeBox;

  Future<void> _openBoxes() async {
    await Hive.initFlutter();
  }

  Future<String> getFiatCurrency() async {
    await _openBoxes();
    _testBox = await Hive.openBox<String>('testBox');
    String? fiatCurrency;
    if (_testBox!.get('fiatCurrency') != null) {
      fiatCurrency = _testBox?.get('fiatCurrency', defaultValue: currencyUSD);
    } else {
      await _testBox?.put('fiatCurrency', currencyUSD);
    }
    fiatCurrency = _testBox?.get('fiatCurrency');
    return fiatCurrency!;
  }

  Future<String> selectFiatCurrency(String selectedFiatCurrency) async {
    String? fiatCurrency;
    _testBox?.put('fiatCurrency', selectedFiatCurrency);
    fiatCurrency = _testBox?.get('fiatCurrency');
    return fiatCurrency!;
  }

  Future<String> getTheme() async {
    await _openBoxes();
    _darkThemeBox = await Hive.openBox<String>('darkThemeBox');
    String? themeType;
    if (_darkThemeBox!.get('themeType') != null) {
      themeType = _darkThemeBox?.get('themeType', defaultValue: 'night');
    } else {
      await _darkThemeBox?.put('themeType', 'night');
    }
    themeType = _darkThemeBox?.get('themeType');
    return themeType!;
  }

  Future<String> selectTheme(String selectedThemeType) async {
    String? themeType;
    _darkThemeBox?.put('themeType', selectedThemeType);
    themeType = _darkThemeBox?.get('themeType');
    return themeType!;
  }
}
