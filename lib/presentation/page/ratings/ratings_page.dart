import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.dart';
import 'package:clean_app/presentation/widget/coin_info_box.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/presentation/widget/ratings_tab_row.dart';
import 'package:clean_app/presentation/widget/refresh_button.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_list_view.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested/nested.dart';

@RoutePage()
class RatingsPage extends StatefulWidget {
  @override
  _RatingsPageState createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  List<Coin> coinList = <Coin>[];
  final CoinBloc coinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  int amountOfPages = 1;
  int pageNumber = 1;
  String? fiatCurrency;

  Toasts toasts = Toasts();

  bool isCoinDataFetched = false; // For coin data
  bool isGlobalDataFetched = false; // For global data

  @override
  void initState() {
    super.initState();
    // Initialize fiat currency one time
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
  }

  Future<void> _refreshData() async {
    // Reset flag and fetch fiat currency again
    isCoinDataFetched = false;
    isGlobalDataFetched = false; // Reset global data fetched flag
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
  }

  void _fetchCoins() {
    if (fiatCurrency != null && !isCoinDataFetched) {
      coinBloc.add(CoinEvent.getMarketCoins(
          fiatCurrency!, order, pageNumber, perPage100, 'true'));
      isCoinDataFetched = true; // Set flag to true after fetching data
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.h),
            const RatingsTabRow(),
            SizedBox(height: 16.h),
            Flexible(
              child: RefreshIndicator(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                color: Palette.primary,
                strokeWidth: 2,
                onRefresh: _refreshData,
                child: MultiBlocListener(
                  listeners: <SingleChildWidget>[
                    BlocListener<SettingsBloc, SettingsState>(
                      bloc: settingsBloc,
                      listener: (BuildContext context, SettingsState state) {
                        if (state.status == BlocStatus.Loaded &&
                            state.fiatCurrency != null) {
                          setState(() {
                            fiatCurrency = state.fiatCurrency;
                          });
                          // Call getGlobalData only if it hasn't been called yet
                          if (!isGlobalDataFetched) {
                            globalDataBloc
                                .add(const GlobalDataEvent.getGlobalData());
                            isGlobalDataFetched = true;
                          }
                          _fetchCoins();
                        }
                      },
                    ),
                    BlocListener<CoinBloc, CoinState>(
                      bloc: coinBloc,
                      listener: (BuildContext context, CoinState state) {
                        if (state.status == BlocStatus.Error) {
                          toasts.errorConnectionToast();
                        }
                      },
                    ),
                  ],
                  child: BlocBuilder<CoinBloc, CoinState>(
                    bloc: coinBloc,
                    builder: (_, CoinState state) {
                      coinList = state.coins;
                      if (state.status == BlocStatus.Loading) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: const ShimmerCoinListView(itemCount: 15),
                        );
                      } else if (state.status == BlocStatus.Loaded) {
                        return ListView.builder(
                          itemCount: coinList.length,
                          itemBuilder: (BuildContext context, int index) {
                            final List<FlSpot> flSpotList = <FlSpot>[];

                            final List<double> newSparkline = <double>[];
                            double i = 0;
                            for (final dynamic element
                                in coinList[index].sparkline) {
                              i++;
                              newSparkline.add(element as double);
                              flSpotList.add(FlSpot(i, element));
                            }
                            return GestureDetector(
                              child: CoinInfoBox(
                                coinIndex: index,
                                coinName: coinList[index].name!,
                                currentPrice: coinList[index].currentPrice!,
                                imageUrl: coinList[index].image!,
                                symbol: coinList[index].symbol!,
                                priceChangePercentage:
                                    coinList[index].priceChangePercentage!,
                                marketCap: coinList[index].marketCap!,
                                sparkline: newSparkline,
                                flSpotList: flSpotList,
                                fiatCurrency: fiatCurrency.toString(),
                              ),
                              onTap: () {
                                context.router.push(
                                  DetailInfoRoute(
                                    coinIndex: index,
                                    coinName: coinList[index].name!,
                                    currentPrice: coinList[index].currentPrice!,
                                    imageUrl: coinList[index].image!,
                                    symbol: coinList[index].symbol!,
                                    priceChangePercentage:
                                        coinList[index].priceChangePercentage!,
                                    marketCap: coinList[index].marketCap!,
                                    sparkline: newSparkline,
                                    flSpotList: flSpotList,
                                    fiatCurrency: fiatCurrency.toString(),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: RefreshButton(),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
