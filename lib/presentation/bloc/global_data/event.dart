part of 'bloc.dart';

@immutable
@freezed
abstract class GlobalDataEvent with _$GlobalDataEvent {
  const GlobalDataEvent._();

  const factory GlobalDataEvent.getGlobalData() = GetGlobalDataEvent;
}
