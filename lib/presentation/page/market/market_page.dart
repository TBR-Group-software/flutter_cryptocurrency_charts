import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/presentation/bloc/initial_data/initial_data_bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/coin_info_box.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/presentation/widget/global_data_column.dart';
import 'package:clean_app/presentation/widget/refresh_button.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_list_view.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_market_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  List<Coin> coinList = <Coin>[];
  final InitialDataBloc initialDataBloc = di.sl.get();

  bool internetIsConnected = true;

  int pageNumber = 1;
  Toasts toasts = Toasts();
  String? fiatCurrency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              BlocBuilder<InitialDataBloc, InitialDataState>(
                  bloc: initialDataBloc,
                  builder: (_, InitialDataState state) {
                    if (state.status == BlocStatus.Loading) {
                      return Column(
                        children: <Widget>[
                          const ShimmerMarketData(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: const ShimmerCoinListView(itemCount: 5),
                          )
                        ],
                      );
                    } else if (state.status == BlocStatus.Error) {
                      toasts.errorConnectionToast();
                      return Center(
                        child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          height: 812.h,
                          width: 375.w,
                          child: RefreshButton(
                            onPressed: () {
                              initialDataBloc.add(
                                  InitialDataEvent.getMarketCoins(
                                      order, pageNumber, perPage100, 'true'));
                              initialDataBloc
                                  .add(const InitialDataEvent.getGlobalData());
                            },
                          ),
                        ),
                      );
                    } else {
                      final List<MarketCapPercentage> marketCapList = state
                          .globalData!.marketCapPercentage
                          .getRange(0, 5)
                          .toList();

                      coinList = state.coins;
                      fiatCurrency = state.fiatCurrency;
                      return Column(
                        children: <Widget>[
                          GlobalDataColumn(
                            marketCapList: marketCapList,
                            activeCryptocurrencies:
                                state.globalData!.activeCryptocurrencies!,
                            markets: state.globalData!.markets!,
                          ),
                          Padding(
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
                          ),
                        ],
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
