import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_brief_model.dart';
import 'package:clean_app/domain/usecase/get_searched_coins.dart';
import 'package:clean_app/domain/usecase/get_single_coin_data.dart';
import 'package:clean_app/domain/usecase/get_trending_coins.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetTrendingCoinsUseCase _getTrendingCoinsUseCase;
  final GetSearchResultsUseCase _getSearchResultsUseCase;
  final GetSingleCoinDataUseCase _getSingleCoinDataUseCase;

  SearchBloc(
    this._getTrendingCoinsUseCase,
    this._getSearchResultsUseCase,
    this._getSingleCoinDataUseCase,
  ) : super(const SearchState(
          BlocStatus.Loading,
          <CoinBriefModel>[],
          <CoinBriefModel>[],
        )) {
    on<InitialTrendingCoinsFetch>(
        (InitialTrendingCoinsFetch event, Emitter<SearchState> emit) async {
      final List<CoinBriefModel> result = await _getTrendingCoinsUseCase();
      emit(state.copyWith(
        blocStatus: BlocStatus.Loaded,
        topCoins: result,
      ));
    });

    on<CoinSearchQuery>(
        (CoinSearchQuery event, Emitter<SearchState> emit) async {
      final List<CoinBriefModel> result =
          await _getSearchResultsUseCase(event.query);
      print(result.first.name);
    });

    on<CoinTapForDetails>(
        (CoinTapForDetails event, Emitter<SearchState> emit) async {
      emit(state.copyWith(detStatus: DetailsStatus.Fetching));
      final Coin result =
          await _getSingleCoinDataUseCase(event.coinID, event.currency);
      emit(state.copyWith(
        detStatus: DetailsStatus.Empty,
        singleCoinData: result,
      ));
    });
  }
}
