part of 'bloc.dart';

@freezed
class CoinState with _$CoinState {
  const factory CoinState({
    required BlocStatus status,
    required List<Coin> coins,
    Object? error,
  }) = _CoinState;
}
