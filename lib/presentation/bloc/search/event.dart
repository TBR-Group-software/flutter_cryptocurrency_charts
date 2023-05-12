part of 'bloc.dart';

@immutable
@freezed
abstract class SearchEvent with _$SearchEvent {
  const SearchEvent._();

  const factory SearchEvent.getSearchedCoins(String searchQuery) =
      GetSearchedCoinsEvent;
  const factory SearchEvent.getTrendingCoins() = GetTrendingCoinsEvent;
}
