part of 'bloc.dart';

@freezed
sealed class CoinEvent with _$CoinEvent {
  const CoinEvent._();

  const factory CoinEvent.getMarketCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) = GetMarketCoinsEvent;
}
