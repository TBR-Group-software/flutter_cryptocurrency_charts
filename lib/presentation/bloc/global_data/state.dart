part of 'bloc.dart';

@freezed
class GlobalDataState with _$GlobalDataState {
  const factory GlobalDataState(
    BlocStatus status,
    GlobalData? globalData, {
    Object? error,
  }) = _GlobalDataState;
}
