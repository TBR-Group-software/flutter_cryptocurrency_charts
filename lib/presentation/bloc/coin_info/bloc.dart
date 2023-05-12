import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin_info.dart';
import 'package:clean_app/domain/usecase/get_market_coin_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class CoinInfoBloc extends Bloc<CoinInfoEvent, CoinInfoState> {
  final GetMarketCoinInfoUseCase _getMarketCoinInfoUseCase;
  CoinInfoBloc(
    this._getMarketCoinInfoUseCase,
  ) : super(const CoinInfoState(
          BlocStatus.loading,
        )) {
    on<CoinInfoEvent>(
      (CoinInfoEvent event, Emitter<CoinInfoState> emit) async {
        await event.when(
          getCoinInfo: (String coinId) => _getCoinInfo(emit, coinId),
        );
      },
    );
  }

  Future<void> _getCoinInfo(Emitter<CoinInfoState> emit, String coinId) async {
    emit(_loadingState());
    emit(await _getMarketCoinInfoUseCase(coinId).then((CoinInfo coin) {
      return CoinInfoState(BlocStatus.loaded, coin: coin);
    }).catchError(_onError));
  }

  CoinInfoState _loadingState() =>
      CoinInfoState(BlocStatus.loading, coin: state.coin);

  Future<CoinInfoState> _onError(Object error) async =>
      CoinInfoState(BlocStatus.error, coin: state.coin, error: error);
}
