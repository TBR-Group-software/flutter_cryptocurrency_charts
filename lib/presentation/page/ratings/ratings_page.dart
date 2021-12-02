import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/coin_info_box.dart';
import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_info_box.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingsPage extends StatefulWidget {
  @override
  _RatingsPageState createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  List<Coin> coinList = <Coin>[];
  final CoinBloc coinBloc = di.sl.get();

  int pageNumber = 1;
  @override
  void initState() {
    super.initState();
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
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.h),
            Row(
              children: <Widget>[
                Text('Cryptoassets', style: TextStyles.tabText),
                SizedBox(width: 16.w),
                Text('Exchanges', style: TextStyles.tabText),
                SizedBox(width: 16.w),
                Text('Sectors', style: TextStyles.tabText),
              ],
            ),
            SizedBox(height: 16.h),
            Flexible(
              child: RefreshIndicator(
                backgroundColor: Palette.background,
                color: Palette.primary,
                strokeWidth: 2,
                onRefresh: () {
                  coinBloc.add(
                    CoinEvent.getMarketCoins(
                      currencyUSD,
                      order,
                      pageNumber,
                      perPage100,
                      'true',
                    ),
                  );
                  return Future<void>.delayed(
                    const Duration(seconds: 1),
                  );
                },
                child: BlocBuilder<CoinBloc, CoinState>(
                  bloc: coinBloc,
                  builder: (_, CoinState state) {
                    coinList = state.coins;
                    if (state.status == BlocStatus.Loading) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) {
                            return ShimmerCoinInfoBox();
                          },
                        ),
                      );
                    }

                    return ListView.builder(
                      itemCount: coinList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final List<FlSpot> flSpotList = <FlSpot>[];

                        final List<double> newSparkline = <double>[];
                        double i = 0;
                        coinList[index].sparkline.forEach((dynamic element) {
                          i++;
                          newSparkline.add(element as double);
                          flSpotList.add(FlSpot(i, element));
                        });
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
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
