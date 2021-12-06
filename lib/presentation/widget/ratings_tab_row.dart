import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingsTabRow extends StatelessWidget {
  const RatingsTabRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Cryptoassets', style: TextStyles.tabText),
        SizedBox(width: 16.w),
        Text('Exchanges', style: TextStyles.tabText),
        SizedBox(width: 16.w),
        Text('Sectors', style: TextStyles.tabText),
      ],
    );
  }
}
