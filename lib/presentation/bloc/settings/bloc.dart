import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/usecase/get_fiat_currency.dart';
import 'package:clean_app/domain/usecase/get_theme.dart';
import 'package:clean_app/domain/usecase/select_fiat_currency.dart';
import 'package:clean_app/domain/usecase/select_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetFiatCurrencyUseCase _getFiatCurrencyUseCase;
  final SelectFiatCurrencyUseCase _selectFiatCurrencyUseCase;
  final GetThemeUseCase _getThemeUseCase;
  final SelectThemeUseCase _selectThemeUseCase;

  SettingsBloc(this._getFiatCurrencyUseCase, this._selectFiatCurrencyUseCase,
      this._getThemeUseCase, this._selectThemeUseCase)
      : super(
          const SettingsState(
            BlocStatus.loading,
          ),
        ) {
    on<GetFiatCurrencyEvent>(
      (GetFiatCurrencyEvent event, Emitter<SettingsState> emit) async {
        await _getFiatCurrency(emit, event);
      },
    );
    on<SelectFiatCurrencyEvent>(
      (SelectFiatCurrencyEvent event, Emitter<SettingsState> emit) async {
        await _selectFiatCurrency(emit, event);
      },
    );
    on<GetThemeEvent>(
      (GetThemeEvent event, Emitter<SettingsState> emit) async {
        await _getTheme(emit, event);
      },
    );
    on<SelectThemeEvent>(
      (SelectThemeEvent event, Emitter<SettingsState> emit) async {
        await _selectTheme(emit, event);
      },
    );
  }

  Future<void> _getFiatCurrency(
    Emitter<SettingsState> emit,
    GetFiatCurrencyEvent event,
  ) async {
    emit(_loadingState());
    emit(await _getFiatCurrencyUseCase()
        .then(
          (String fiatCurrency) => SettingsState(
            BlocStatus.loaded,
            fiatCurrency: fiatCurrency,
            themeType: state.themeType,
          ),
        )
        .catchError(_onError));
  }

  Future<void> _selectFiatCurrency(
    Emitter<SettingsState> emit,
    SelectFiatCurrencyEvent event,
  ) async {
    emit(_loadingState());
    emit(await _selectFiatCurrencyUseCase(event.fiatCurrency)
        .then(
          (String fiatCurrency) => SettingsState(
            BlocStatus.loaded,
            fiatCurrency: event.fiatCurrency,
            themeType: state.themeType,
          ),
        )
        .catchError(_onError));
  }

  Future<void> _getTheme(
    Emitter<SettingsState> emit,
    GetThemeEvent event,
  ) async {
    emit(_loadingState());
    emit(await _getThemeUseCase()
        .then(
          (String themeType) => SettingsState(
            BlocStatus.loaded,
            fiatCurrency: state.fiatCurrency,
            themeType: themeType,
          ),
        )
        .catchError(_onError));
  }

  Future<void> _selectTheme(
    Emitter<SettingsState> emit,
    SelectThemeEvent event,
  ) async {
    emit(_loadingState());
    emit(await _selectThemeUseCase(event.themeType)
        .then(
          (String fiatCurrency) => SettingsState(
            BlocStatus.loaded,
            fiatCurrency: state.fiatCurrency,
            themeType: event.themeType,
          ),
        )
        .catchError(_onError));
  }

  SettingsState _loadingState() => SettingsState(BlocStatus.loading,
      fiatCurrency: state.fiatCurrency, themeType: state.themeType);

  Future<SettingsState> _onError(Object error) async => SettingsState(
        BlocStatus.error,
        fiatCurrency: state.fiatCurrency,
        themeType: state.themeType,
        error: error,
      );
}
