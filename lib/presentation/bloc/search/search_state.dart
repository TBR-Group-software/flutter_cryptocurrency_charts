part of 'search_bloc.dart';

@immutable
class SearchState {
  final BlocStatus blocStatus;
  final List<CoinBriefModel> topCoins;
  final List<CoinBriefModel> searchedCoins;
  final DetailsStatus detStatus;
  final Coin? singleCoinData;
  final Object? error;

  const SearchState(
    this.blocStatus,
    this.topCoins,
    this.searchedCoins, {
    this.detStatus = DetailsStatus.Empty,
    this.singleCoinData,
    this.error,
  });

  SearchState copyWith({
    BlocStatus? blocStatus,
    List<CoinBriefModel>? topCoins,
    List<CoinBriefModel>? searchedCoins,
    DetailsStatus? detStatus,
    Coin? singleCoinData,
    Object? error,
  }) {
    return SearchState(
      blocStatus ?? this.blocStatus,
      topCoins ?? this.topCoins,
      searchedCoins ?? this.searchedCoins,
      detStatus: detStatus ?? this.detStatus,
      singleCoinData: singleCoinData ?? this.singleCoinData,
      error: error ?? this.error,
    );
  }
}

enum DetailsStatus {
  Fetching,
  Empty,
}
