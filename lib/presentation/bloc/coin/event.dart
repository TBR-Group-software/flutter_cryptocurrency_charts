part of 'bloc.dart';

@immutable
@freezed
abstract class CoinEvent with _$CoinEvent {
  const CoinEvent._();

  const factory CoinEvent.getMarketCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) = GetMarketCoinsEvent;
  const factory CoinEvent.getNextMarketCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) = GetNextMarketCoinsEvent;
}
