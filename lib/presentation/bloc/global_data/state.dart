part of 'bloc.dart';

@immutable
class GlobalDataState {
  final BlocStatus status;
  final GlobalData? globalData;
  final Object? error;
  const GlobalDataState(this.status, this.globalData, {this.error});
}
