part of 'bloc.dart';

@immutable
class SettingsState {
  final BlocStatus status;
  final String? fiatCurrency;
  final String? themeType;
  final Object? error;
  const SettingsState(
    this.status, {
    this.fiatCurrency,
    this.themeType,
    this.error,
  });
}
