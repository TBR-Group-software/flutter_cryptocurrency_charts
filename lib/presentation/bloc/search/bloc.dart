import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/domain/usecase/get_searched_coins.dart';
import 'package:clean_app/domain/usecase/get_trending_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetSearchedCoinsUseCase _getSearchedCoinsUseCase;
  final GetTrendingCoinsUseCase _getTrendingCoinsUseCase;
  SearchBloc(
    this._getSearchedCoinsUseCase,
    this._getTrendingCoinsUseCase,
  ) : super(const SearchState(BlocStatus.loading, <SearchedCoin>[])) {
    on<SearchEvent>(
      (SearchEvent event, Emitter<SearchState> emit) async {
        await event.when(
          getSearchedCoins: (String searchQuery) =>
              _getSearchedCoins(emit, searchQuery),
          getTrendingCoins: () => _getTrendingCoins(emit),
        );
      },
    );
  }
  Future<void> _getSearchedCoins(
      Emitter<SearchState> emit, String searchQuery) async {
    emit(_loadingState());

    emit(await _getSearchedCoinsUseCase(searchQuery)
        .then((List<SearchedCoin> coin) => SearchState(BlocStatus.loaded, coin))
        .catchError(_onError));
  }

  Future<void> _getTrendingCoins(Emitter<SearchState> emit) async {
    emit(_loadingState());
    emit(await _getTrendingCoinsUseCase()
        .then((List<SearchedCoin> coin) => SearchState(BlocStatus.loaded, coin))
        .catchError(_onError));
  }

  SearchState _loadingState() => SearchState(BlocStatus.loading, state.coins);

  Future<SearchState> _onError(Object error) async =>
      SearchState(BlocStatus.error, state.coins, error: error);
}
