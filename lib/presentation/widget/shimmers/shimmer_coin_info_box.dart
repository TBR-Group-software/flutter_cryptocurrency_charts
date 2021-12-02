import 'package:clean_app/presentation/widget/change_price_triangle.dart';
import 'package:clean_app/presentation/widget/sparkline_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCoinInfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: Palette.overlay1,
      baseColor: Palette.base4,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Coin',
                          style: TextStyles.whiteSemiBold14,
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
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'CNN',
                              style: TextStyles.overlay3Bold11,
                            ),
                            ChangePriceTriangle(
                              priceChangePercentage: 0,
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
            Container(
              height: 40.h,
              child: const AbsorbPointer(
                absorbing: true,
                child: SparklineWidget(
                  sparkline: <double>[4, 1, 2, 10, 4, 12, 10],
                  flSpotList: <FlSpot>[
                    FlSpot(0, 4),
                    FlSpot(1, 1),
                    FlSpot(2, 2),
                    FlSpot(3, 10),
                    FlSpot(4, 4),
                    FlSpot(5, 12),
                    FlSpot(6, 10),
                  ],
                  showBarArea: false,
                  pricePercentage: 0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '\$666',
                      style: TextStyles.whiteSemiBold14,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      'MCap \$${120.8} Bn',
                      style: TextStyles.overlay3Bold11,
                    )
                  ],
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.star,
                  color: Palette.accentDarkBlue,
                  size: 18.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
