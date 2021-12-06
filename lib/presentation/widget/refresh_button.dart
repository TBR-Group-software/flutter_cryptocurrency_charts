import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefreshButton extends StatelessWidget {
  final void Function()? onPressed;
  const RefreshButton({
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.refresh,
        color: Palette.primary,
        size: 32.sp,
      ),
    );
  }
}
