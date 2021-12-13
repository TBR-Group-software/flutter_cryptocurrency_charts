import 'dart:math';

import 'package:clean_app/theme/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SparklineWidget extends StatefulWidget {
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final bool showBarArea;
  final num pricePercentage;

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
            swapAnimationCurve: Curves.linear,
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    final List<Color> gradientColors = <Color>[
      if (widget.pricePercentage >= 0) Palette.accentBlue else Palette.errorRed,
      if (widget.pricePercentage >= 0) Palette.primary else Palette.lightRed,
    ];
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (double value) {
          return FlLine(
            color: widget.pricePercentage >= 0
                ? Palette.darkBlue
                : Palette.darkRed,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (double value) {
          return FlLine(
            color: widget.pricePercentage >= 0
                ? Palette.darkBlue
                : Palette.darkRed,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(
              color: widget.pricePercentage >= 0
                  ? Palette.darkBlue
                  : Palette.darkRed,
              width: 1)),
      minX: 0,
      maxX: widget.sparkline?.length.toDouble(),
      minY: widget.sparkline?.reduce(min),
      maxY: widget.sparkline?.reduce(max),
      lineBarsData: <LineChartBarData>[
        LineChartBarData(
          spots: widget.flSpotList,
          isCurved: true,
          colors: gradientColors,
          barWidth: 1,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: widget.showBarArea,
            colors: gradientColors
                .map((Color color) => color.withOpacity(0.3))
                .toList(),
          ),
        ),
      ],
    );
  }
}
