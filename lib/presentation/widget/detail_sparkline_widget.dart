import 'dart:math';

import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailSparklineWidget extends StatefulWidget {
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final bool showBarArea;

  const DetailSparklineWidget({
    required this.sparkline,
    required this.flSpotList,
    required this.showBarArea,
    Key? key,
  }) : super(key: key);

  @override
  _SparklineWidgetState createState() => _SparklineWidgetState();
}

class _SparklineWidgetState extends State<DetailSparklineWidget> {
  List<Color> gradientColors = <Color>[
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      mainData(),
      swapAnimationCurve: Curves.linear,
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (double value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (double value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(
          showTitles: false,
          reservedSize: 40,
          getTextStyles: (BuildContext context, double value) =>
              TextStyles.overlay3Bold11,
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (BuildContext context, double value) =>
              TextStyles.overlay3Bold11,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '1d';
              case 24:
                return '2d';
              case 48:
                return '3d';
              case 72:
                return '4d';
              case 96:
                return '5d';
              case 120:
                return '6d';
              case 144:
                return '7d';
            }
            return '';
          },

          //margin: 20,
          interval: 1,
        ),
        show: true,
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff37434d), width: 2),
          left: BorderSide(color: Color(0xff37434d), width: 2),
        ),
      ),
      minX: 0,
      maxX: widget.sparkline?.length.toDouble(),
      minY: widget.sparkline?.reduce(min),
      maxY: widget.sparkline?.reduce(max),
      lineBarsData: [
        LineChartBarData(
          spots: widget.flSpotList,
          isCurved: false,
          colors: gradientColors,
          barWidth: 2,
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
