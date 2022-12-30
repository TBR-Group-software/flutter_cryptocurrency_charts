part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class InitialTrendingCoinsFetch extends SearchEvent {}

class CoinSearchQuery extends SearchEvent {
  final String query;

  CoinSearchQuery(this.query);
}

class CoinTapForDetails extends SearchEvent {
  final String coinID;
  final String currency;

  CoinTapForDetails({
    required this.coinID,
    required this.currency,
  });
}

class ResultPagePop extends SearchEvent {}
