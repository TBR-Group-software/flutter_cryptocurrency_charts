part of 'bloc.dart';

@immutable
class CoinInfoState {
  final BlocStatus status;
  final CoinInfo? coin;
  final Object? error;
  const CoinInfoState(this.status, {this.error, this.coin});
}
