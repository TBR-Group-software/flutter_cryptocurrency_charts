import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
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
  final CoinBloc coinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  Toasts toasts = Toasts();

  StreamSubscription<ConnectivityResult>? connectivityToInternetSubscription;
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

  void loadData() {
    if (isConnectedToInternet) {
      globalDataBloc.add(const GlobalDataEvent.getGlobalData());
      coinBloc.add(CoinEvent.getMarketCoins(
        fiatCurrency!,
        order,
        pageNumber,
        perPage100,
        sparkLineIsTrue,
      ));
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
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.white,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.overlay3,
                            ),
                          ),
                          onSubmitted: (String value) {
                            startSearch();
                          },
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: startSearch,
                        child: const Icon(
                          Icons.search,
                          color: Palette.primary,
                          size: 28,
                        ),
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
                    child: const Icon(
                      Icons.arrow_back,
                      color: Palette.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    "Search results for '${searchController.text}'",
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
            if (!showSearchResults) const SizedBox(height: 44),
            if (!showSearchResults)
              const Text(
                'Top 7 Trending Coins',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Palette.white,
                ),
              ),
            const SizedBox(height: 48),
            Expanded(
              child: BlocBuilder<CoinBloc, CoinState>(
                bloc: coinBloc,
                builder: (BuildContext context, CoinState state) {
                  if (state.status == BlocStatus.Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == BlocStatus.Error) {
                    return const Center(
                      child: Text(
                        'Failed to load data',
                        style: TextStyle(color: Palette.white),
                      ),
                    );
                  } else if (state.status == BlocStatus.Loaded) {
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        final Coin coin = state.coins[index];
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
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(width: 21),
                              Text(
                                coin.name!,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Palette.white,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 33,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color: Palette.base4,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: const TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  return const Center(child: Text('No coins available'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
