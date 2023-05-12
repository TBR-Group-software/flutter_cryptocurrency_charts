part of 'bloc.dart';

@immutable
class SearchState {
  final BlocStatus status;
  final List<dynamic> coins;
  final Object? error;
  const SearchState(this.status, this.coins, {this.error});
}
