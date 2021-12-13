import 'package:clean_app/domain/service/settings.dart';

abstract class GetFiatCurrencyUseCase {
  Future<String> call();
}

class RestGetFiatCurrencyUseCase implements GetFiatCurrencyUseCase {
  final SettingsService _service;

  RestGetFiatCurrencyUseCase(this._service);

  @override
  Future<String> call() => _service.getFiatCurrency();
}
