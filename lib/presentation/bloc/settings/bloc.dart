import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/usecase/get_fiat_currency.dart';
import 'package:clean_app/domain/usecase/get_theme.dart';
import 'package:clean_app/domain/usecase/select_fiat_currency.dart';
import 'package:clean_app/domain/usecase/select_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

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
          const SettingsState(BlocStatus.Loading,
              fiatCurrency: 'usd', themeType: 'night'),
        );

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) =>
      event.when(
        getFiatCurrency: _getFiatCurrency,
        selectFiatCurrency: _selectFiatCurrency,
        getTheme: _getTheme,
        selectTheme: _selectTheme,
      );

  Stream<SettingsState> _getFiatCurrency() async* {
    yield _loadingState();
    yield await _getFiatCurrencyUseCase()
        .then(
          (String fiatCurrency) => SettingsState(BlocStatus.Loaded,
              fiatCurrency: fiatCurrency, themeType: state.themeType),
        )
        .catchError(_onError);
  }

  Stream<SettingsState> _selectFiatCurrency(String fiatCurrency) async* {
    yield _loadingState();
    yield await _selectFiatCurrencyUseCase(fiatCurrency)
        .then((String fiatCurrency) => SettingsState(BlocStatus.Loaded,
            fiatCurrency: fiatCurrency, themeType: state.themeType))
        .catchError(_onError);
  }

  Stream<SettingsState> _getTheme() async* {
    yield _loadingState();
    yield await _getThemeUseCase()
        .then(
          (String themeType) => SettingsState(BlocStatus.Loaded,
              themeType: themeType, fiatCurrency: state.fiatCurrency),
        )
        .catchError(_onError);
  }

  Stream<SettingsState> _selectTheme(String themeType) async* {
    yield _loadingState();
    yield await _selectThemeUseCase(themeType)
        .then((String themeType) => SettingsState(BlocStatus.Loaded,
            themeType: themeType, fiatCurrency: state.fiatCurrency))
        .catchError(_onError);
  }

  SettingsState _loadingState() => SettingsState(BlocStatus.Loading,
      fiatCurrency: state.fiatCurrency, themeType: state.themeType);

  Future<SettingsState> _onError(Object error) async => SettingsState(
        BlocStatus.Error,
        fiatCurrency: state.fiatCurrency,
        themeType: state.themeType,
        error: error,
      );
}
