import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopFiveCoinsString extends StatelessWidget {
  const TopFiveCoinsString({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Top 5 Coins',
          style: TextStyles.whiteSemiBold16,
        ),
      ),
    );
  }
}
