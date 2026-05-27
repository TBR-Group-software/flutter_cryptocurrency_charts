part of 'bloc.dart';

@freezed
sealed class GlobalDataEvent with _$GlobalDataEvent {
  const GlobalDataEvent._();

  const factory GlobalDataEvent.getGlobalData() = GetGlobalDataEvent;
}
