import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/bloc/trending_coin/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/back_icon.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/presentation/widget/search_icon.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSearchFieldActive = false;
  bool showSearchResults = false;
  TextEditingController searchController = TextEditingController();

  List<Coin> coinList = <Coin>[];
  final TrendingCoinBloc trendingCoinBloc = di.sl.get();
  final CoinBloc coinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  Toasts toasts = Toasts();

  StreamSubscription<ConnectivityResult>? connectivityToInternetSubscription;
  bool isConnectedToInternet = true;
  int retryConnectToInternetCount = 0;

  int pageNumber = 1;
  String? fiatCurrency;

  @override
  void initState() {
    super.initState();

    connectivityToInternetSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        setState(() {
          isConnectedToInternet = false;
        });
      } else {
        setState(() {
          isConnectedToInternet = true;
          if (retryConnectToInternetCount > 0) {
            loadData();
          }
        });
      }
    });

    settingsBloc.add(const SettingsEvent.getFiatCurrency());
    settingsBloc.stream.listen(
      (SettingsState state) {
        if (state.status == BlocStatus.Loaded) {
          setState(() {
            fiatCurrency = state.fiatCurrency!;
          });
          loadData();
        }
      },
    );

    trendingCoinBloc.add(const TrendingCoinEvent.getTrendingCoins());

    coinBloc.stream.listen((CoinState coinState) {
      if (coinState.status == BlocStatus.Loaded) {
        setState(() {
          coinList = coinState.coins;
        });
      }
    });
  }

  Future<void> loadData() async {
    if (isConnectedToInternet) {
      globalDataBloc.add(const GlobalDataEvent.getGlobalData());

      coinBloc.add(CoinEvent.getMarketCoins(
          fiatCurrency.toString(), order, pageNumber, perPage100, 'true'));

      await Future<void>.delayed(const Duration(seconds: 60));
    } else {
      retryConnectToInternetCount++;
      toasts.errorConnectionToast();
    }
  }

  @override
  void dispose() {
    connectivityToInternetSubscription?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void startSearch() {
    trendingCoinBloc.add(TrendingCoinEvent.searchCoins(searchController.text));
    setState(() {
      showSearchResults = true;
    });
  }

  void stopSearch() {
    trendingCoinBloc.add(const TrendingCoinEvent.getTrendingCoins());
    setState(() {
      showSearchResults = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 100),
            if (!showSearchResults)
              Focus(
                onFocusChange: (bool hasFocus) {
                  setState(() {
                    isSearchFieldActive = hasFocus;
                  });
                },
                child: Container(
                  height: 57,
                  decoration: BoxDecoration(
                    color: Palette.base4,
                    border: isSearchFieldActive
                        ? Border.all(color: Palette.secondary, width: 1)
                        : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          style: TextStyles.whiteRegularInter14,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search'.tr(),
                            hintStyle: TextStyles.overlay3RegularInter14,
                          ),
                          onSubmitted: (String value) {
                            startSearch();
                          },
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: startSearch,
                        child: const SearchIcon(),
                      ),
                    ],
                  ),
                ),
              )
            else
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: stopSearch,
                    child: const BackIcon(),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    "${'search_results_for'.tr()} '${searchController.text}'",
                    style: TextStyles.whiteBoldInter16
                        .copyWith(color: Theme.of(context).hintColor),
                  ),
                ],
              ),
            if (!showSearchResults) const SizedBox(height: 44),
            if (!showSearchResults)
              Text(
                'top7'.tr(),
                style: TextStyles.whiteBoldInter18
                    .copyWith(color: Theme.of(context).hintColor),
              ),
            const SizedBox(height: 48),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BlocBuilder<TrendingCoinBloc, TrendingCoinState>(
                      bloc: trendingCoinBloc,
                      builder: (BuildContext context,
                          TrendingCoinState trendingState) {
                        if (trendingState.status == BlocStatus.Loading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (trendingState.status == BlocStatus.Error) {
                          return Center(
                            child: Text(
                              'failed_to_load'.tr(),
                              style: TextStyles.whiteRegularInter14
                                  .copyWith(color: Theme.of(context).hintColor),
                            ),
                          );
                        } else if (trendingState.status == BlocStatus.Loaded) {
                          if (trendingState.coins.isEmpty) {
                            return Center(
                              child: Text(
                                'no_trending_coins_found'.tr(),
                                style: TextStyles.whiteRegularInter14.copyWith(
                                    color: Theme.of(context).hintColor),
                              ),
                            );
                          }

                          return BlocBuilder<CoinBloc, CoinState>(
                            bloc: coinBloc,
                            builder:
                                (BuildContext context, CoinState coinState) {
                              if (coinState.status == BlocStatus.Loading) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else if (coinState.status == BlocStatus.Error) {
                                return Center(
                                  child: Text(
                                    'failed_to_load'.tr(),
                                    style: TextStyles.whiteRegularInter14
                                        .copyWith(
                                            color: Theme.of(context).hintColor),
                                  ),
                                );
                              } else if (coinState.status ==
                                  BlocStatus.Loaded) {
                                final List<Coin> coinList = coinState.coins;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: trendingState.coins.length > 7
                                      ? 7
                                      : trendingState.coins.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final TrendingCoin coin =
                                        trendingState.coins[index];
                                    print(
                                        'coinList length: ${coinList.length}');

                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () async {
                                              final Coin? foundCoin =
                                                  coinList.firstWhere(
                                                (Coin c) => c.id == coin.id,
                                                orElse: () => Coin(
                                                  null,
                                                  null,
                                                  null,
                                                  null,
                                                  null,
                                                  null,
                                                  null,
                                                  <dynamic>[],
                                                ),
                                              );
                                              print(
                                                  'found coin: ${foundCoin!.name}');
                                              final List<double> sparkline =
                                                  foundCoin.sparkline
                                                      .map((dynamic e) =>
                                                          (e is num)
                                                              ? e.toDouble()
                                                              : 0.0)
                                                      .toList();
                                              final List<FlSpot> flSpotList =
                                                  <FlSpot>[];
                                              final List<double> newSparkline =
                                                  <double>[];
                                              double i = 0;

                                              for (final dynamic element
                                                  in foundCoin.sparkline) {
                                                i++;
                                                newSparkline
                                                    .add(element as double);
                                                flSpotList
                                                    .add(FlSpot(i, element));
                                              }
                                              if (foundCoin.id != null) {
                                                context.router.push(
                                                  DetailInfoRoute(
                                                    coinName: foundCoin.name!,
                                                    currentPrice:
                                                        foundCoin.currentPrice!,
                                                    priceChangePercentage: foundCoin
                                                        .priceChangePercentage!,
                                                    marketCap:
                                                        foundCoin.marketCap!,
                                                    imageUrl: foundCoin.image!,
                                                    coinIndex: foundCoin
                                                        .marketCap!
                                                        .toInt(),
                                                    symbol: foundCoin.symbol!,
                                                    sparkline: sparkline,
                                                    flSpotList: flSpotList,
                                                    fiatCurrency:
                                                        fiatCurrency ?? 'usd',
                                                  ),
                                                );
                                              }
                                            },
                                            child: Image.network(
                                              coin.image!,
                                              width: 34,
                                              height: 34,
                                              fit: BoxFit.cover,
                                              errorBuilder:
                                                  (BuildContext context,
                                                      Object exception,
                                                      StackTrace? stackTrace) {
                                                return Container(
                                                  width: 34,
                                                  height: 34,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Palette.overlay3,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          const SizedBox(width: 21),
                                          Text(
                                            coin.name!,
                                            style: TextStyles.whiteBoldInter18
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .hintColor),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 40,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            decoration: BoxDecoration(
                                              color: Palette.base4,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '${coin.marketCap}',
                                                style: TextStyles
                                                    .whiteSemiBoldInter11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }
                              return Center(
                                child: Text(
                                  'no_coins_available'.tr(),
                                  style: TextStyles.whiteRegularInter14
                                      .copyWith(
                                          color: Theme.of(context).hintColor),
                                ),
                              );
                            },
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
