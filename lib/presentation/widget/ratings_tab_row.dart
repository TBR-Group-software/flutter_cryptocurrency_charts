import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class RatingsTabRow extends StatelessWidget {
  const RatingsTabRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('cryptoassets'.tr(), style: TextStyles.tabText),
        SizedBox(width: 16.w),
        Text('exchanges'.tr(), style: TextStyles.tabText),
        SizedBox(width: 16.w),
        Text('sectors'.tr(), style: TextStyles.tabText),
      ],
    );
  }
}
