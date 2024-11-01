import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/presentation/bloc/initial_data/initial_data_bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
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

@RoutePage()
class RatingsPage extends StatefulWidget {
  @override
  _RatingsPageState createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  List<Coin> coinList = <Coin>[];
  final InitialDataBloc initialDataBloc = di.sl.get();

  int amountOfPages = 1;
  int pageNumber = 1;
  String? fiatCurrency;

  Toasts toasts = Toasts();

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
                onRefresh: () {
                  initialDataBloc.add(InitialDataEvent.getMarketCoins(
                      order, pageNumber, perPage100, 'true'));
                  return Future<void>.delayed(
                    const Duration(seconds: 1),
                  );
                },
                child: BlocBuilder<InitialDataBloc, InitialDataState>(
                  bloc: initialDataBloc,
                  builder: (_, InitialDataState state) {
                    coinList = state.coins;
                    fiatCurrency = state.fiatCurrency;
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
                      toasts.errorConnectionToast();
                      return const Center(
                        child: RefreshButton(),
                      );
                    }
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
