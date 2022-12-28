import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/usecase/get_searched_coins.dart';
import 'package:clean_app/domain/usecase/get_trending_coins.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetTrendingCoinsUseCase _getTrendingCoinsUseCase;
  final GetSearchResultsUseCase _getSearchResultsUseCase;

  SearchBloc(this._getTrendingCoinsUseCase, this._getSearchResultsUseCase)
      : super(const SearchState(
          BlocStatus.Loading,
          <Coin>[],
          <Coin>[],
        )) {
    on<InitialTrendingCoinsFetch>(
        (InitialTrendingCoinsFetch event, Emitter<SearchState> emit) async {
          final List<Coin> result = await _getTrendingCoinsUseCase();
          print(result.first.name);
        });

    on<CoinSearchQuery>(
            (CoinSearchQuery event, Emitter<SearchState> emit) async {
          final List<Coin> result = await _getSearchResultsUseCase(event.query);
          print(result.first.name);
        });
  }
}
