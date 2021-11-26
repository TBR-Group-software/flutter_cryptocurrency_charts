import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SparklineWidget extends StatefulWidget {
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  final bool showBarArea;

  const SparklineWidget({
    required this.sparkline,
    required this.flSpotList,
    required this.showBarArea,
    Key? key,
  }) : super(key: key);

  @override
  _SparklineWidgetState createState() => _SparklineWidgetState();
}

class _SparklineWidgetState extends State<SparklineWidget> {
  List<Color> gradientColors = <Color>[
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

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
    return LineChartData(
      gridData: FlGridData(
        show: false,
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
        show: false,
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
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
