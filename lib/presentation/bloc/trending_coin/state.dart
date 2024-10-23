part of 'bloc.dart';

@immutable
class TrendingCoinState {
  final BlocStatus status;
  final List<TrendingCoin> coins;
  final Object? error;
  const TrendingCoinState(this.status, this.coins, {this.error});
}
