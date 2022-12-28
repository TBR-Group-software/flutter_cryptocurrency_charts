part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class InitialTrendingCoinsFetch extends SearchEvent {}

class CoinSearchQuery extends SearchEvent {
  final String query;

  CoinSearchQuery(this.query);
}
