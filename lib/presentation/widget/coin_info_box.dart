import 'package:clean_app/presentation/widget/change_price_triangle.dart';
import 'package:clean_app/presentation/widget/sparkline_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinInfoBox extends StatelessWidget {
  final String coinName;
  final num currentPrice, priceChangePercentage, marketCap;
  final String imageUrl;
  final int coinIndex;
  final String symbol;
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final String fiatCurrency;
  const CoinInfoBox({
    required this.coinName,
    required this.currentPrice,
    required this.imageUrl,
    required this.coinIndex,
    required this.symbol,
    required this.priceChangePercentage,
    required this.marketCap,
    required this.fiatCurrency,
    this.sparkline,
    this.flSpotList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                    imageUrl,
                    width: 30.w,
                    height: 30.h,
                  ),
                  SizedBox(width: 8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: coinName.length > 12
                            ? Text(
                                coinName.replaceRange(
                                  12,
                                  coinName.length,
                                  '...',
                                ),
                                style: TextStyles.semiBold14.copyWith(
                                    color: Theme.of(context).hintColor),
                              )
                            : Text(
                                coinName,
                                style: TextStyles.semiBold14.copyWith(
                                    color: Theme.of(context).hintColor),
                              ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6.w),
                            decoration: BoxDecoration(
                              color: Palette.base4,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.r),
                              ),
                            ),
                            child: Text(
                              '${coinIndex + 1}',
                              style: TextStyles.whiteSemiBold11,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            symbol.toUpperCase(),
                            style: TextStyles.overlay3Bold11,
                          ),
                          ChangePriceTriangle(
                            priceChangePercentage: priceChangePercentage,
                            fontSize: 18.sp,
                            textStyle: TextStyles.overlay3Bold11,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
            child: AbsorbPointer(
              absorbing: true,
              child: SparklineWidget(
                sparkline: sparkline,
                flSpotList: flSpotList,
                showBarArea: false,
                pricePercentage: priceChangePercentage,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    currentPrice.toStringAsFixed(2) +
                        ' ' +
                        fiatCurrency.toUpperCase(),
                    style: TextStyles.semiBold14
                        .copyWith(color: Theme.of(context).hintColor),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    marketCap > 1000000000000
                        ? ' ${'market_cap'.tr() + ' ' + (marketCap / 1000000000).toStringAsFixed(2) + ' ' + fiatCurrency.toUpperCase()} T'
                        : ' ${'market_cap'.tr() + ' ' + (marketCap / 1000000000).toStringAsFixed(2) + ' ' + fiatCurrency.toUpperCase()} Bn',
                    style: TextStyles.overlay3Bold11,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
