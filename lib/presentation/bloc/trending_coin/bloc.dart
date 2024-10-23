import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/usecase/get_trending_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class TrendingCoinBloc extends Bloc<TrendingCoinEvent, TrendingCoinState> {
  final GetTrendingCoinsUseCase _getTrendingCoinsUseCase;

  TrendingCoinBloc(this._getTrendingCoinsUseCase)
      : super(const TrendingCoinState(BlocStatus.Loading, <TrendingCoin>[])) {
    on<GetTrendingCoinsEvent>(
      (GetTrendingCoinsEvent event, Emitter<TrendingCoinState> emit) async {
        await _getTrendingCoins(emit);
      },
    );
  }

  Future<void> _getTrendingCoins(Emitter<TrendingCoinState> emit) async {
    emit(_loadingState());
    emit(await _getTrendingCoinsUseCase()
        .then((List<TrendingCoin> coins) =>
            TrendingCoinState(BlocStatus.Loaded, coins))
        .catchError(_onError));
  }

  TrendingCoinState _loadingState() =>
      TrendingCoinState(BlocStatus.Loading, state.coins);

  Future<TrendingCoinState> _onError(Object error) async =>
      TrendingCoinState(BlocStatus.Error, state.coins, error: error);
}
