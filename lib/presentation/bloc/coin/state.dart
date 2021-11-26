part of 'bloc.dart';

@immutable
class CoinState {
  final BlocStatus status;
  final List<Coin> coins;
  final Object? error;
  const CoinState(this.status, this.coins, {this.error});
}
