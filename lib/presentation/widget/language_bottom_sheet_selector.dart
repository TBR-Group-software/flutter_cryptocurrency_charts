import 'package:clean_app/presentation/widget/language_selected_widget.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<String?> showBottomSheetLanguageSelector({
  required BuildContext context,
}) {
  return showModalBottomSheet<String>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.r),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 240.h,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(16.r),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 20.h),
            Text(
              'language'.tr(),
              style: TextStyles.semiBold16
                  .copyWith(color: Theme.of(context).hintColor),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    LanguageSelectedWidgeet(
                      language: 'english'.tr(),
                    ),
                    SizedBox(height: 24.h),
                    LanguageSelectedWidgeet(
                      language: 'russian'.tr(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
