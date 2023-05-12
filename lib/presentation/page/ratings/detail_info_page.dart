import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/domain/entity/coin_info.dart';
import 'package:clean_app/presentation/bloc/coin_info/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/widget/change_price_triangle.dart';
import 'package:clean_app/presentation/widget/detail_sparkline_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailInfoPage extends StatefulWidget {
  final int coinIndex;
  final String coinId;
  const DetailInfoPage({
    required this.coinId,
    required this.coinIndex,
    Key? key,
  }) : super(key: key);

  @override
  _DetailInfoPageState createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  String? fiatCurrency;
  final SettingsBloc settingsBloc = di.sl.get();
  final CoinInfoBloc coinInfoBloc = di.sl.get();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      coinInfoBloc.add(CoinInfoEvent.getCoinInfo(widget.coinId));
      settingsBloc.add(const SettingsEvent.getFiatCurrency());
      settingsBloc.stream.listen(
        (SettingsState state) {
          if (state.status == BlocStatus.loaded) {
            if (!mounted) {
              return;
            }
            setState(() {
              fiatCurrency = state.fiatCurrency;
            });
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    print(fiatCurrency);
    return BlocBuilder<CoinInfoBloc, CoinInfoState>(
      bloc: coinInfoBloc,
      builder: (BuildContext context, CoinInfoState state) {
        if (state.status == BlocStatus.loaded) {
          final CoinInfo? coin = state.coin;
          if (coin == null) {
            return const Text('Coin not found');
          }
          final List<FlSpot> flSpotList = <FlSpot>[];
          print('Coin fiats${coin.fiats}');
          print(coin.fiats![fiatCurrency?.toLowerCase()]);
          final List<double> newSparkline = <double>[];
          double i = 0;
          coin.sparklineIn7d.forEach((dynamic element) {
            i++;
            newSparkline.add(element as double);
            flSpotList.add(FlSpot(i, element));
          });
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(120.h),
              child: Container(
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 50.h, bottom: 8.h),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: Theme.of(context).hintColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Image.network(
                      coin.image ?? '',
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      coin.symbol?.toUpperCase() ?? '',
                      style: TextStyles.semiBold14
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                    SizedBox(width: 4.w),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.r),
                        ),
                      ),
                      child: Text(
                        '${widget.coinIndex + 1}',
                        style: TextStyles.semiBold14
                            .copyWith(color: Theme.of(context).hintColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          coin.name ?? 'Coin name',
                          style: TextStyles.semiBold14
                              .copyWith(color: Theme.of(context).hintColor),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '${coin.fiats?[fiatCurrency?.toLowerCase()]} $fiatCurrency',
                              style: TextStyles.semiBold24
                                  .copyWith(color: Theme.of(context).hintColor),
                            ),
                          ),
                          ChangePriceTriangle(
                            priceChangePercentage:
                                coin.priceChangePercentage ?? 0,
                            fontSize: 24.sp,
                            textStyle: TextStyles.semiBold14
                                .copyWith(color: Theme.of(context).hintColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: MediaQuery.of(context).size.width,
                  height: 400.h,
                  child: DetailSparklineWidget(
                    showBarArea: true,
                    sparkline: coin.sparklineIn7d
                        .map(
                            (dynamic e) => double.tryParse(e.toString()) ?? 0.0)
                        .toList(),
                    flSpotList: flSpotList,
                    pricePercentage: coin.priceChangePercentage ?? 0,
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'buy_crypto'.tr(),
                        style: TextStyles.semiBold14
                            .copyWith(color: Theme.of(context).hintColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state.status == BlocStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(color: Palette.secondary),
          );
        } else if (state.status == BlocStatus.error) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Error occured',
                style: TextStyles.whiteBold18,
              ),
              const BackButton(
                color: Colors.white,
              )
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
