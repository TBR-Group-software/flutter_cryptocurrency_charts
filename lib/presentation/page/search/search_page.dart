import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/bloc/trending_coin/bloc.dart';
import 'package:clean_app/presentation/widget/back_icon.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/presentation/widget/search_icon.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
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

  List<TrendingCoin> coinList = <TrendingCoin>[];
  final TrendingCoinBloc trendingCoinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  Toasts toasts = Toasts();

  StreamSubscription<ConnectivityResult>?
      connectivityToInternetSubscription; // Subscription to Internet connection variable
  bool isConnectedToInternet = true; // Internet connection tracking variable
  int retryConnectToInternetCount =
      0; // Counter for internet connection retries

  int pageNumber = 1;
  String? fiatCurrency;

  @override
  void initState() {
    super.initState();

    // Subscription to changes in the Internet connection
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
            // Retry downloading data after connection
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
  }

  Future<void> loadData() async {
    if (isConnectedToInternet) {
      while (isConnectedToInternet) {
        globalDataBloc.add(const GlobalDataEvent.getGlobalData());
        trendingCoinBloc.add(const TrendingCoinEvent.getTrendingCoins());
        await Future<void>.delayed(const Duration(seconds: 10));
      }
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
    setState(() {
      showSearchResults = true;
    });
  }

  void stopSearch() {
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
                    style: TextStyles.whiteBoldInter16,
                  ),
                ],
              ),
            if (!showSearchResults) const SizedBox(height: 44),
            if (!showSearchResults)
              Text(
                'top7'.tr(),
                style: TextStyles.whiteBoldInter18,
              ),
            const SizedBox(height: 48),
            Expanded(
              child: BlocBuilder<TrendingCoinBloc, TrendingCoinState>(
                bloc: trendingCoinBloc,
                builder: (BuildContext context, TrendingCoinState state) {
                  if (state.status == BlocStatus.Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == BlocStatus.Error) {
                    return Center(
                      child: Text(
                        'failed_to_load'.tr(),
                        style: TextStyles.whiteRegularInter14,
                      ),
                    );
                  } else if (state.status == BlocStatus.Loaded) {
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        final TrendingCoin coin = state.coins[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                coin.image!,
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                                errorBuilder: (BuildContext context,
                                    Object exception, StackTrace? stackTrace) {
                                  return Container(
                                    width: 34,
                                    height: 34,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palette.overlay3,
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(width: 21),
                              Text(
                                coin.name!,
                                style: TextStyles.whiteBoldInter18,
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 40,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color: Palette.base4,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    '${coin.marketCap}',
                                    style: TextStyles.whiteSemiBoldInter11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  return Center(child: Text('no_coins_available'.tr()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
