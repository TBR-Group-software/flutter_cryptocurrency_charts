import 'package:clean_app/presentation/widget/pie_chart_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:easy_localization/easy_localization.dart';

class ShimmerMarketData extends StatelessWidget {
  const ShimmerMarketData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: Palette.overlay1,
      baseColor: Palette.base4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30.h),
          Container(
            height: 280.h,
            child: PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 50.r,
                sections: <PieChartSectionData>[
                  PieChartSectionData(
                    color: Palette.primary,
                    value: 70,
                    title: '70',
                    titleStyle: TextStyles.whiteSemiBold14,
                    radius: 60.r,
                    borderSide: BorderSide(
                      color: Palette.background,
                      width: 2.w,
                    ),
                  ),
                  PieChartSectionData(
                    color: Palette.primary,
                    value: 30,
                    title: '30',
                    titleStyle: TextStyles.whiteSemiBold14,
                    radius: 60.r,
                    borderSide: BorderSide(
                      color: Palette.background,
                      width: 2.w,
                    ),
                  ),
                ],
              ),
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
                      'active_coins'.tr(),
                      style: TextStyles.overlay3Bold14,
                    ),
                    Text(
                      '-----',
                      style: TextStyles.whiteSemiBold14,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'markets'.tr(),
                      style: TextStyles.overlay3Bold14,
                    ),
                    Text(
                      '----',
                      style: TextStyles.whiteSemiBold14,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
