part of 'bloc.dart';

@immutable
class SettingsState {
  final BlocStatus status;
  final String? fiatCurrency;
  final Object? error;
  const SettingsState(this.status, this.fiatCurrency, {this.error});
}
