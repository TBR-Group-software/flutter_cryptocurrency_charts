part of 'initial_data_bloc.dart';

@immutable
@freezed
abstract class InitialDataEvent with _$InitialDataEvent {
  const InitialDataEvent._();

  const factory InitialDataEvent.getMarketCoins(
          String order, int pageNumber, int perPage, String sparkline) =
      GetMarketCoinsEvent;

  const factory InitialDataEvent.getGlobalData() = GetGlobalDataEvent;

  const factory InitialDataEvent.getFiatCurrency() = GetFiatCurrencyEvent;
}
