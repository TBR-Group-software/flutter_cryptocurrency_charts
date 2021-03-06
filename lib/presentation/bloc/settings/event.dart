part of 'bloc.dart';

@immutable
@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.getFiatCurrency() = GetFiatCurrencyEvent;

  const factory SettingsEvent.selectFiatCurrency(String fiatCurrency) =
      SelectFiatCurrencyEvent;
  const factory SettingsEvent.getTheme() = GetThemeEvent;

  const factory SettingsEvent.selectTheme(String themeType) = SelectThemeEvent;
}
