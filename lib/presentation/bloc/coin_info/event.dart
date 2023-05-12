part of 'bloc.dart';

@immutable
@freezed
abstract class CoinInfoEvent with _$CoinInfoEvent {
  const CoinInfoEvent._();

  const factory CoinInfoEvent.getCoinInfo(String coinId) = GetCoinInfoEvent;
}
