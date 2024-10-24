import 'package:clean_app/assembly/entity/coin_from_dto.dart';
import 'package:clean_app/assembly/entity/global_data_from_dto.dart';
import 'package:clean_app/assembly/entity/market_cap_percentage_from_dto.dart';
import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/assembly/model/coin_dto_from_json.dart';
import 'package:clean_app/assembly/model/global_data_dto_from_json.dart';
import 'package:clean_app/assembly/model/market_cap_percentage_dto_from_json.dart';
import 'package:clean_app/data/gateway/rest.dart';
import 'package:clean_app/data/gateway/settings.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:clean_app/data/model/market_cap_percentage.dart';
import 'package:clean_app/data/service/hive_settings.dart';
import 'package:clean_app/data/service/rest_coins.dart';
import 'package:clean_app/data/service/rest_global_data.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/domain/service/coin.dart';
import 'package:clean_app/domain/service/global_data.dart';
import 'package:clean_app/domain/service/settings.dart';
import 'package:clean_app/domain/usecase/get_fiat_currency.dart';
import 'package:clean_app/domain/usecase/get_global_data.dart';
import 'package:clean_app/domain/usecase/get_market_coins.dart';
import 'package:clean_app/domain/usecase/get_theme.dart';
import 'package:clean_app/domain/usecase/get_trending_coins.dart';
import 'package:clean_app/domain/usecase/search_treding_coins.dart';
import 'package:clean_app/domain/usecase/select_fiat_currency.dart';
import 'package:clean_app/domain/usecase/select_theme.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/bloc/trending_coin/bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void init() {
  //From Dto Factory
  sl.registerLazySingleton<Factory<Coin, CoinDto>>(() => CoinFromDtoFactory());
  sl.registerLazySingleton<Factory<TrendingCoin, TrendingCoinDto>>(
      () => TrendingCoinFromDtoFactory());
  sl.registerLazySingleton<Factory<GlobalData, GlobalDataDto>>(
      () => GlobalDataFromDtoFactory(
            sl.get(),
          ));

  sl.registerLazySingleton<
          Factory<MarketCapPercentage, MarketCapPercentageDto>>(
      () => MarketCapPercentageFromDtoFactory());

  //From Json Factory
  sl.registerLazySingleton<Factory<CoinDto, Map<String, dynamic>>>(
      () => CoinDtoFromJsonFactory());
  sl.registerLazySingleton<Factory<TrendingCoinDto, Map<String, dynamic>>>(
      () => TrendingCoinDtoFromJsonFactory());
  sl.registerLazySingleton<Factory<GlobalDataDto, Map<String, dynamic>>>(
      () => GlobalDataDtoFromJsonFactory());
  sl.registerLazySingleton<
          Factory<MarketCapPercentageDto, Map<String, dynamic>>>(
      () => MarketCapPercentageDtoFromJsonFactory());
  //Gateway
  sl.registerLazySingleton<RestGateway>(() => RestGateway(
        sl.get(),
        sl.get(),
        sl.get(),
      ));
  sl.registerLazySingleton<SettingsGateway>(() => SettingsGateway());

  //Service
  sl.registerLazySingleton<CoinService>(
      () => RestCoinService(sl.get(), sl.get(), sl.get()));
  sl.registerLazySingleton<GlobalDataService>(
      () => RestGlobalDataService(sl.get(), sl.get()));

  sl.registerLazySingleton<SettingsService>(
      () => HiveSettingsSerivce(sl.get()));
  //UseCase
  sl.registerLazySingleton<GetMarketCoinsUseCase>(
      () => RestGetMarketCoinsUseCase(sl.get()));
  sl.registerLazySingleton<GetGlobalDataUseCase>(
      () => RestGetGlobalDataUseCase(sl.get()));
  sl.registerLazySingleton<GetFiatCurrencyUseCase>(
      () => RestGetFiatCurrencyUseCase(sl.get()));
  sl.registerLazySingleton<SelectFiatCurrencyUseCase>(
      () => RestSelectFiatCurrencyUseCase(sl.get()));
  sl.registerLazySingleton<GetThemeUseCase>(
      () => RestGetThemeUseCase(sl.get()));
  sl.registerLazySingleton<SelectThemeUseCase>(
      () => RestSelectThemeUseCase(sl.get()));
  sl.registerLazySingleton<GetTrendingCoinsUseCase>(
      () => GetTrendingCoinsUseCase(sl.get()));
  sl.registerLazySingleton<SearchTrendingCoinsUseCase>(
      () => SearchTrendingCoinsUseCase(sl.get()));

  //Bloc
  sl.registerLazySingleton<CoinBloc>(() => CoinBloc(sl.get()));
  sl.registerLazySingleton<TrendingCoinBloc>(
      () => TrendingCoinBloc(sl.get(), sl.get()));
  sl.registerLazySingleton<GlobalDataBloc>(() => GlobalDataBloc(sl.get()));
  sl.registerLazySingleton<SettingsBloc>(
      () => SettingsBloc(sl.get(), sl.get(), sl.get(), sl.get()));
}
