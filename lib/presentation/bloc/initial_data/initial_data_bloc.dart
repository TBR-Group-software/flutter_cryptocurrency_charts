import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/usecase/get_fiat_currency.dart';
import 'package:clean_app/domain/usecase/get_global_data.dart';
import 'package:clean_app/domain/usecase/get_market_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_data_bloc.freezed.dart';
part 'initial_data_event.dart';
part 'initial_data_state.dart';

class InitialDataBloc extends Bloc<InitialDataEvent, InitialDataState> {
  final GetMarketCoinsUseCase _getMarketCoinsUseCase;
  final GetGlobalDataUseCase _getGlobalDataUseCase;
  final GetFiatCurrencyUseCase _getFiatCurrencyUseCase;

  InitialDataBloc(
    this._getMarketCoinsUseCase,
    this._getGlobalDataUseCase,
    this._getFiatCurrencyUseCase,
  ) : super(const InitialDataState(
          status: BlocStatus.Loading,
          coins: <Coin>[],
          globalData: null,
          error: null,
        )) {
    on<GetMarketCoinsEvent>(
      (GetMarketCoinsEvent event, Emitter<InitialDataState> emit) async {
        await _getMarketCoins(
          emit,
          event.order,
          event.pageNumber,
          event.perPage,
          event.sparkline,
        );
      },
    );
    on<GetGlobalDataEvent>(
      (GetGlobalDataEvent event, Emitter<InitialDataState> emit) async {
        await _getGlobalData(emit);
      },
    );

    // on<GetFiatCurrencyEvent>(
    //   (GetFiatCurrencyEvent event, Emitter<InitialDataState> emit) async {
    //     await _getFiatCurrency(emit, event);
    //   },
    // );
  }
  // Future<void> _getFiatCurrency(
  //   Emitter<InitialDataState> emit,
  //   GetFiatCurrencyEvent event,
  // ) async {
  //   emit(_loadingState());
  //   emit(await _getFiatCurrencyUseCase().then(
  //     (String fiatCurrency) => state.copyWith(
  //       status: BlocStatus.Loaded,
  //       fiatCurrency: fiatCurrency,
  //     ),
  //   ));
  // }

  Future<void> _getMarketCoins(
    Emitter<InitialDataState> emit,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  ) async {
    try {
      emit(_loadingState());
      final String fiatCurrency = await _getFiatCurrencyUseCase();

      final List<Coin> coins = await _getMarketCoinsUseCase(
        fiatCurrency,
        order,
        pageNumber,
        perPage,
        sparkline,
      );

      emit(state.copyWith(
        status: BlocStatus.Loaded,
        coins: coins,
        fiatCurrency: fiatCurrency,
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

  Future<void> _getGlobalData(Emitter<InitialDataState> emit) async {
    try {
      emit(_loadingState());

      final GlobalData globalData = await _getGlobalDataUseCase();
      emit(state.copyWith(
        status: BlocStatus.Loaded,
        globalData: globalData,
      ));
    } on HttpException catch (e) {
      if (e.message == '429' && state.globalData != null) {
        // If status code is 429, emit Loaded state with the current data
        emit(state.copyWith(status: BlocStatus.Loaded));
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

  InitialDataState _loadingState() =>
      state.copyWith(status: BlocStatus.Loading);

  InitialDataState _errorState(String message) => state.copyWith(
        status: BlocStatus.Error,
        error: message,
      );
}
