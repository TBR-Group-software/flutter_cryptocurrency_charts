import 'package:clean_app/data/gateway/constants.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingsGateway {
  Box<String>? _testBox;
  // Box<String>? _fiatCurrencyBox;
  // Box<String>? _languageBox;
  // Box<bool>? _darkModeBox;

  Future<void> _openBoxes() async {
    await Hive.initFlutter();
    _testBox = await Hive.openBox<String>('testBox');

    // _fiatCurrencyBox = await Hive.openBox<String>('fiatCurrencyBox');
    // _languageBox = await Hive.openBox<String>('languageBox');
    // _darkModeBox = await Hive.openBox<bool>('darkModeBox');
  }

  Future<String> getFiatCurrency() async {
    await _openBoxes();
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
}
