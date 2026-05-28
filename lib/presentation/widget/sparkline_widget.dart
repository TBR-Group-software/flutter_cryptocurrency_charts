import 'dart:math';

import 'package:clean_app/theme/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SparklineWidget extends StatefulWidget {
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final bool showBarArea;
  final num? pricePercentage;

  const SparklineWidget({
    required this.sparkline,
    required this.flSpotList,
    required this.showBarArea,
    required this.pricePercentage,
    Key? key,
  }) : super(key: key);

  @override
  _SparklineWidgetState createState() => _SparklineWidgetState();
}

class _SparklineWidgetState extends State<SparklineWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: LineChart(
            mainData(),
            curve: Curves.linear,
          ),
        ),
      ],
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
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (double value) {
          return FlLine(
            color: lineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (double value) {
          return FlLine(
            color: lineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
          show: false, border: Border.all(color: lineColor, width: 1)),
      minX: 0,
      maxX: widget.sparkline?.length.toDouble(),
      minY: widget.sparkline?.reduce(min),
      maxY: widget.sparkline?.reduce(max),
      lineBarsData: <LineChartBarData>[
        LineChartBarData(
          spots: widget.flSpotList ?? <FlSpot>[],
          isCurved: true,
          gradient: LinearGradient(colors: gradientColors),
          barWidth: 1,
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
