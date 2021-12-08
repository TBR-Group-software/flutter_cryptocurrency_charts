import 'package:bloc/bloc.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/usecase/get_fiat_currency.dart';
import 'package:clean_app/domain/usecase/select_fiat_currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetFiatCurrencyUseCase _getFiatCurrencyUseCase;
  final SelectFiatCurrencyUseCase _selectFiatCurrencyUseCase;
  SettingsBloc(this._getFiatCurrencyUseCase, this._selectFiatCurrencyUseCase)
      : super(
          const SettingsState(BlocStatus.Loading, null),
        );

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) =>
      event.when(
        getFiatCurrency: _getFiatCurrency,
        selectFiatCurrency: _selectFiatCurrency,
      );

  Stream<SettingsState> _getFiatCurrency() async* {
    yield _loadingState();
    yield await _getFiatCurrencyUseCase()
        .then(
          (String fiatCurrency) =>
              SettingsState(BlocStatus.Loaded, fiatCurrency),
        )
        .catchError(_onError);
  }

  Stream<SettingsState> _selectFiatCurrency(String fiatCurrency) async* {
    yield _loadingState();
    yield await _selectFiatCurrencyUseCase(fiatCurrency)
        .then((String fiatCurrency) =>
            SettingsState(BlocStatus.Loaded, fiatCurrency))
        .catchError(_onError);
  }

  SettingsState _loadingState() =>
      SettingsState(BlocStatus.Loading, state.fiatCurrency);

  Future<SettingsState> _onError(Object error) async =>
      SettingsState(BlocStatus.Error, state.fiatCurrency, error: error);
}
