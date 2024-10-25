import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/usecase/get_market_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class CoinBloc extends Bloc<CoinEvent, CoinState> {
  final GetMarketCoinsUseCase _getMarketCoinsUseCase;

  CoinBloc(this._getMarketCoinsUseCase)
      : super(const CoinState(
          status: BlocStatus.Loading,
          coins: <Coin>[],
          error: null,
        )) {
    on<GetMarketCoinsEvent>(
      (GetMarketCoinsEvent event, Emitter<CoinState> emit) async {
        await _getMarketCoins(
          emit,
          event.currency,
          event.order,
          event.pageNumber,
          event.perPage,
          event.sparkline,
        );
      },
    );
  }

  Future<void> _getMarketCoins(
    Emitter<CoinState> emit,
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  ) async {
    try {
      emit(_loadingState());

      final List<Coin> coins = await _getMarketCoinsUseCase(
        currency,
        order,
        pageNumber,
        perPage,
        sparkline,
      );

      emit(CoinState(
        status: BlocStatus.Loaded,
        coins: coins,
        error: null,
      ));
    } on HttpException catch (e) {
      if (e.message == '429' && state.coins.isNotEmpty) {
        // If status code is 429, emit Loaded state without changes
        emit(state.copyWith(
          status: BlocStatus.Loaded,
        ));
      } else {
        emit(_errorState('Server error: ${e.message}'));
      }
    } on SocketException {
      emit(_errorState('No internet connection.'));
    } on FormatException {
      emit(_errorState('Bad response format.'));
    } catch (e) {
      emit(_errorState('An unexpected error occurred: $e'));
    }
  }

  CoinState _loadingState() =>
      CoinState(status: BlocStatus.Loading, coins: state.coins, error: null);

  CoinState _errorState(String message) => CoinState(
        status: BlocStatus.Error,
        coins: state.coins,
        error: message,
      );
}
