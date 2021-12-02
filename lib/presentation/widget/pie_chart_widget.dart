import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PieChartWidget extends StatefulWidget {
  final List<MarketCapPercentage> marketCapList;

  const PieChartWidget({
    required this.marketCapList,
  });

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  List<PieChartSectionData> pieChartDataList = <PieChartSectionData>[];

  @override
  void initState() {
    super.initState();

    pieChartDataList = List<PieChartSectionData>.generate(
      widget.marketCapList.length,
      (int index) {
        fullAmount = fullAmount - widget.marketCapList[index].percentage!;

        if (index == 0) {
          return PieChartSectionData(
            color: Palette.primary,
            value: widget.marketCapList[index].percentage?.toDouble(),
            title: '${widget.marketCapList[index].coinSymbol?.toUpperCase()}',
            titleStyle: TextStyles.whiteSemiBold14,
            radius: 60.r,
            borderSide: BorderSide(
              color: Palette.background,
              width: 2.w,
            ),
          );
        } else if (index == 1) {
          return PieChartSectionData(
            color: Palette.tertriary,
            value: widget.marketCapList[index].percentage?.toDouble(),
            title: '${widget.marketCapList[index].coinSymbol?.toUpperCase()}',
            titleStyle: TextStyles.whiteSemiBold14,
            radius: 60.r,
            borderSide: BorderSide(
              color: Palette.background,
              width: 2.w,
            ),
          );
        } else {
          return PieChartSectionData(
            color: Palette.overlay4,
            value: widget.marketCapList[index].percentage?.toDouble(),
            title: '${widget.marketCapList[index].coinSymbol?.toUpperCase()}',
            titleStyle: TextStyles.whiteSemiBold14,
            radius: 60.r,
            borderSide: BorderSide(
              color: Palette.background,
              width: 2.w,
            ),
          );
        }
      },
    );
    pieChartDataList.add(
      PieChartSectionData(
        color: Palette.base3,
        value: fullAmount,
        title: 'Other',
        titleStyle: TextStyles.whiteSemiBold14,
        radius: 60.r,
        borderSide: BorderSide(
          color: Palette.background,
          width: 2.w,
        ),
      ),
    );
  }

  double fullAmount = 100.0;
  @override
  Widget build(BuildContext context) {
    int touchedIndex = -1;

    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 50.r,
        sections: pieChartDataList,
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
            setState(
              () {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              },
            );
          },
        ),
      ),
    );
  }
}
