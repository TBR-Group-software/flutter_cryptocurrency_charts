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
      await _getGlobalData(emit, event);
    });
  }

  Future<void> _getGlobalData(
      Emitter<GlobalDataState> emit, GetGlobalDataEvent event) async {
    emit(_loadingState());
    emit(await _getGlobalDataUseCase()
        .then(
          (GlobalData globalData) =>
              GlobalDataState(BlocStatus.Loaded, globalData),
        )
        .catchError(_onError));
  }

  GlobalDataState _loadingState() =>
      GlobalDataState(BlocStatus.Loading, state.globalData);

  Future<GlobalDataState> _onError(Object error) async =>
      GlobalDataState(BlocStatus.Error, state.globalData, error: error);
}
