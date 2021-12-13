import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChevronIcon extends StatelessWidget {
  const ChevronIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      CupertinoIcons.right_chevron,
      size: 18.sp,
      color: Theme.of(context).hintColor,
    );
  }
}
