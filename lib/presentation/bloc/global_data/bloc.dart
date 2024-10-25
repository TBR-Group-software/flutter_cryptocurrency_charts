import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/usecase/get_global_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class GlobalDataBloc extends Bloc<GlobalDataEvent, GlobalDataState> {
  final GetGlobalDataUseCase _getGlobalDataUseCase;

  GlobalDataBloc(this._getGlobalDataUseCase)
      : super(const GlobalDataState(BlocStatus.Loading, null)) {
    on<GetGlobalDataEvent>(
      (GetGlobalDataEvent event, Emitter<GlobalDataState> emit) async {
        await _getGlobalData(emit);
      },
    );
  }

  Future<void> _getGlobalData(Emitter<GlobalDataState> emit) async {
    try {
      emit(_loadingState());

      final GlobalData globalData = await _getGlobalDataUseCase();
      emit(GlobalDataState(BlocStatus.Loaded, globalData));
    } on HttpException catch (e) {
      if (e.message == '429' && state.globalData != null) {
        // If status code is 429, emit Loaded state with the current data
        emit(state.copyWith(status: BlocStatus.Loaded));
      } else {
        emit(_errorState('Server error: ${e.message}'));
      }
    } on SocketException {
      emit(_errorState('No internet connection.'));
    } on FormatException {
      emit(_errorState('Bad response format.'));
    } catch (e) {
      emit(_errorState('An unexpected error occurred: $e'));
    }
  }

  GlobalDataState _loadingState() =>
      GlobalDataState(BlocStatus.Loading, state.globalData);

  GlobalDataState _errorState(String message) =>
      GlobalDataState(BlocStatus.Error, state.globalData, error: message);
}
