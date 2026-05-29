import 'dart:math';

import 'package:clean_app/theme/palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailSparklineWidget extends StatefulWidget {
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final bool showBarArea;
  final num? pricePercentage;

  const DetailSparklineWidget({
    required this.sparkline,
    required this.flSpotList,
    required this.showBarArea,
    required this.pricePercentage,
    Key? key,
  }) : super(key: key);

  @override
  _SparklineWidgetState createState() => _SparklineWidgetState();
}

class _SparklineWidgetState extends State<DetailSparklineWidget> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      mainData(),
      curve: Curves.linear,
    );
  }

  LineChartData mainData() {
    final num? pricePercentage = widget.pricePercentage;
    final bool hasPercentage = pricePercentage != null;
    final bool isPositive = pricePercentage != null && pricePercentage >= 0;
    final List<Color> gradientColors = hasPercentage
        ? <Color>[
            if (isPositive) Palette.accentBlue else Palette.errorRed,
            if (isPositive) Palette.primary else Palette.lightRed,
          ]
        : <Color>[Palette.overlay3, Palette.overlay4];
    final Color lineColor = hasPercentage
        ? (isPositive ? Palette.darkBlue : Palette.darkRed)
        : Palette.overlay4;
    final Color verticalLineColor = hasPercentage
        ? (isPositive ? const Color(0xff37434d) : const Color(0xff4D3737))
        : Palette.overlay4;
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (double value) {
          return FlLine(
            color: lineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (double value) {
          return FlLine(
            color: verticalLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 40,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (double index, TitleMeta widget) {
                switch (index.toInt()) {
                  case 0:
                    return Text('1${'day'.tr()}');
                  case 24:
                    return Text('2${'day'.tr()}');
                  case 48:
                    return Text('3${'day'.tr()}');
                  case 72:
                    return Text('4${'day'.tr()}');
                  case 96:
                    return Text('5${'day'.tr()}');
                  case 120:
                    return Text('6${'day'.tr()}');
                  case 144:
                    return Text('7${'day'.tr()}');
                }
                return const SizedBox();
              }),
        ),
        show: true,
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: lineColor, width: 2),
          left: BorderSide(color: lineColor, width: 2),
        ),
      ),
      minX: 0,
      maxX: widget.sparkline?.length.toDouble(),
      minY: widget.sparkline?.reduce(min),
      maxY: widget.sparkline?.reduce(max),
      lineBarsData: <LineChartBarData>[
        LineChartBarData(
          spots: widget.flSpotList ?? <FlSpot>[],
          isCurved: false,
          gradient: LinearGradient(colors: gradientColors),
          barWidth: 2,
          isStrokeCapRound: false,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: widget.showBarArea,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((Color color) => color.withValues(alpha: 0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
