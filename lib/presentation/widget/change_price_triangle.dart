import 'dart:math' as math;
import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePriceTriangle extends StatelessWidget {
  final num priceChangePercentage, fontSize;
  final TextStyle textStyle;

  const ChangePriceTriangle({
    required this.priceChangePercentage,
    required this.fontSize,
    required this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    if (priceChangePercentage > 0) {
      return Row(
        children: <Widget>[
          Container(
            transform: Matrix4.translationValues(0, 1.8, 0),
            child: Transform.rotate(
              angle: -90 * math.pi / 180,
              child: Icon(
                Icons.play_arrow,
                color: Palette.primary,
                size: fontSize.sp,
              ),
            ),
          ),
          Text(
            '${priceChangePercentage.toStringAsFixed(2)}%',
            style: textStyle,
          ),
        ],
      );
    } else {
      if (priceChangePercentage < 0) {
        return Row(
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(0, -1, 0),
              child: Transform.rotate(
                angle: 90 * math.pi / 180,
                child: Icon(
                  Icons.play_arrow,
                  color: Palette.errorRed,
                  size: fontSize.sp,
                ),
              ),
            ),
            Text(
              '${priceChangePercentage.abs().toStringAsFixed(2)}%',
              style: textStyle,
            ),
          ],
        );
      } else {
        return Row(
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(0, -1, 0),
              child: Transform.rotate(
                angle: 90 * math.pi / 180,
                child: Icon(
                  Icons.play_arrow,
                  color: Palette.overlay3,
                  size: fontSize.sp,
                ),
              ),
            ),
            Text(
              '${priceChangePercentage.abs().toStringAsFixed(2)}%',
              style: textStyle,
            ),
          ],
        );
      }
    }
  }
}
