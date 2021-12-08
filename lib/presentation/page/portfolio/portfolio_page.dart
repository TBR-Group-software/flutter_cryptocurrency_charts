import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/coin_info_box.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/presentation/widget/global_data_column.dart';
import 'package:clean_app/presentation/widget/refresh_button.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_list_view.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_market_data.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List<Coin> coinList = <Coin>[];
  final CoinBloc coinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  bool internetIsConnected = true;

  int pageNumber = 1;
  Toasts toasts = Toasts();
  String? fiatCurrency;

  @override
  void initState() {
    super.initState();
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
    settingsBloc.stream.listen(
      (SettingsState state) {
        if (state.status == BlocStatus.Loaded) {
          setState(() {
            fiatCurrency = state.fiatCurrency!;
          });
          globalDataBloc.add(const GlobalDataEvent.getGlobalData());
          coinBloc.add(CoinEvent.getMarketCoins(
              state.fiatCurrency!, order, pageNumber, perPage100, 'true'));
        }
      },
    );
    globalDataBloc.stream.listen((GlobalDataState state) {
      setState(() {
        if (state.status == BlocStatus.Error) {
          internetIsConnected = false;
        } else {
          internetIsConnected = true;
        }
      });
    });
    coinBloc.stream.listen((CoinState state) {
      setState(() {
        if (state.status == BlocStatus.Error) {
          internetIsConnected = false;
        } else {
          internetIsConnected = true;
        }
      });
    });
    if (internetIsConnected == false) {
      setState(() {
        toasts.errorConnectionToast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              if (internetIsConnected == true)
                Column(
                  children: <Widget>[
                    BlocBuilder<GlobalDataBloc, GlobalDataState>(
                      bloc: globalDataBloc,
                      builder: (_, GlobalDataState state) {
                        if (state.status == BlocStatus.Loading) {
                          return const ShimmerMarketData();
                        }
                        if (state.status == BlocStatus.Error) {
                          return const SizedBox();
                        } else {
                          final List<MarketCapPercentage> marketCapList = state
                              .globalData!.marketCapPercentage
                              .getRange(0, 5)
                              .toList();
                          return GlobalDataColumn(
                            marketCapList: marketCapList,
                            activeCryptocurrencies:
                                state.globalData!.activeCryptocurrencies!,
                            markets: state.globalData!.markets!,
                          );
                        }
                      },
                    ),
                    BlocBuilder<CoinBloc, CoinState>(
                      bloc: coinBloc,
                      builder: (_, CoinState state) {
                        if (state.status == BlocStatus.Loading) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: const ShimmerCoinListView(itemCount: 5),
                          );
                        } else if (state.status == BlocStatus.Loaded) {
                          coinList = state.coins;
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount:
                                  coinList.getRange(0, 5).toList().length,
                              itemBuilder: (BuildContext context, int index) {
                                final List<FlSpot> flSpotList = <FlSpot>[];
                                final List<double> newSparkline = <double>[];
                                double i = 0;
                                coinList[index].sparkline.forEach(
                                  (dynamic element) {
                                    i++;
                                    newSparkline.add(element as double);
                                    flSpotList.add(FlSpot(i, element));
                                  },
                                );
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
                                        currentPrice:
                                            coinList[index].currentPrice!,
                                        imageUrl: coinList[index].image!,
                                        symbol: coinList[index].symbol!,
                                        priceChangePercentage: coinList[index]
                                            .priceChangePercentage!,
                                        marketCap: coinList[index].marketCap!,
                                        sparkline: newSparkline,
                                        flSpotList: flSpotList,
                                        fiatCurrency: fiatCurrency.toString(),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                )
              else
                Center(
                  child: Container(
                    color: Palette.background,
                    height: 812.h,
                    width: 375.w,
                    child: const RefreshButton(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
