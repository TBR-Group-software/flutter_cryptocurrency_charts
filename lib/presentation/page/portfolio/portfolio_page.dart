import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/coin_info_box.dart';
import 'package:clean_app/presentation/widget/pie_chart_widget.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_info_box.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_market_data.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
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
  int pageNumber = 1;

  @override
  void initState() {
    super.initState();
    globalDataBloc.add(const GlobalDataEvent.getGlobalData());
    coinBloc.add(
      CoinEvent.getMarketCoins(
        currencyUSD,
        order,
        pageNumber,
        perPage100,
        'true',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BlocBuilder<GlobalDataBloc, GlobalDataState>(
              bloc: globalDataBloc,
              builder: (_, GlobalDataState state) {
                if (state.status == BlocStatus.Loading) {
                  return const ShimmerMarketData();
                } else {
                  final List<MarketCapPercentage> marketCapList = state
                      .globalData!.marketCapPercentage
                      .getRange(0, 5)
                      .toList();
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30.h),
                      Container(
                        height: 280.h,
                        child: PieChartWidget(
                          marketCapList: marketCapList,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Active Coins',
                                  style: TextStyles.overlay3Bold14,
                                ),
                                Text(
                                  '${state.globalData?.activeCryptocurrencies}',
                                  style: TextStyles.whiteSemiBold14,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Markets',
                                  style: TextStyles.overlay3Bold14,
                                ),
                                Text(
                                  '${state.globalData?.markets}',
                                  style: TextStyles.whiteSemiBold14,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
              },
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top 5 Coins',
                  style: TextStyles.whiteSemiBold16,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            BlocBuilder<CoinBloc, CoinState>(
              bloc: coinBloc,
              builder: (_, CoinState state) {
                if (state.status == BlocStatus.Loading) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return ShimmerCoinInfoBox();
                      },
                    ),
                  );
                } else {
                  coinList = state.coins;
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: coinList.getRange(0, 5).toList().length,
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
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
