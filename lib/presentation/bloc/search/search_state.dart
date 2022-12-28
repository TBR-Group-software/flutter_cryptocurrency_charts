part of 'search_bloc.dart';

@immutable
class SearchState {
  final BlocStatus status;
  final List<Coin> topCoins;
  final List<Coin> searchedCoins;
  final Object? error;

  const SearchState(
    this.status,
    this.topCoins,
    this.searchedCoins, {
    this.error,
  });
}
