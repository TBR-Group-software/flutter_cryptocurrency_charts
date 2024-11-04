part of 'initial_data_bloc.dart';

@freezed
class InitialDataState with _$InitialDataState {
  const factory InitialDataState({
    required BlocStatus status,
    required List<Coin> coins,
    GlobalData? globalData,
    final String? fiatCurrency,
    Object? error,
  }) = _InitialDataState;
}
