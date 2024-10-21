import 'package:clean_app/domain/service/settings.dart';

abstract class SelectThemeUseCase {
  Future<String?> call(String themeType);
}

class RestSelectThemeUseCase implements SelectThemeUseCase {
  final SettingsService _service;

  RestSelectThemeUseCase(this._service);

  @override
  Future<String?> call(String themeType) => _service.selectTheme(themeType);
}
