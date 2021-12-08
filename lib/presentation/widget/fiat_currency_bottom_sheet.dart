import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/presentation/widget/fiat_currency_selected_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<String?> showBottomSheetCurrencySelector({
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
          color: Palette.base1,
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
              'Fiat currency',
              style: TextStyles.whiteSemiBold16,
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
                    const FiatCurrencySelectedWidget(
                      currency: currencyUSD,
                    ),
                    SizedBox(height: 24.h),
                    const FiatCurrencySelectedWidget(
                      currency: currencyEUR,
                    ),
                    SizedBox(height: 24.h),
                    const FiatCurrencySelectedWidget(
                      currency: currencyUAH,
                    ),
                    SizedBox(height: 24.h),
                    const FiatCurrencySelectedWidget(
                      currency: currencyJPY,
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
