import 'package:clean_app/domain/service/settings.dart';

abstract class SelectFiatCurrencyUseCase {
  Future<String?> call(String fiatCurrency);
}

class RestSelectFiatCurrencyUseCase implements SelectFiatCurrencyUseCase {
  final SettingsService _service;

  RestSelectFiatCurrencyUseCase(this._service);

  @override
  Future<String?> call(String fiatCurrency) =>
      _service.selectFiatCurrency(fiatCurrency);
}
