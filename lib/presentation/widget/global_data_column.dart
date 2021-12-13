import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/presentation/widget/market_row_data.dart';
import 'package:clean_app/presentation/widget/pie_chart_widget.dart';
import 'package:clean_app/presentation/widget/top_five_coins_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalDataColumn extends StatelessWidget {
  final List<MarketCapPercentage> marketCapList;
  final num activeCryptocurrencies, markets;
  const GlobalDataColumn({
    required this.marketCapList,
    required this.activeCryptocurrencies,
    required this.markets,
  });

  @override
  Widget build(BuildContext context) {
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
          child: MarketRowData(
            activeCryptocurrencies: activeCryptocurrencies,
            markets: markets,
          ),
        ),
        SizedBox(height: 40.h),
        const TopFiveCoinsString(),
        SizedBox(height: 10.h),
      ],
    );
  }
}
