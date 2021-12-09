import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/fiat_currency_bottom_sheet.dart';
import 'package:clean_app/presentation/widget/language_bottom_sheet_selector.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final SettingsBloc settingsBloc = di.sl.get();

  @override
  void initState() {
    super.initState();
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
  }

  String? fiatCurrency;
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.w),
          width: 300.w,
          height: 160.h,
          decoration: BoxDecoration(
            color: Palette.base1,
            borderRadius: BorderRadius.all(
              Radius.circular(16.r),
            ),
          ),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            bloc: settingsBloc,
            builder: (_, SettingsState state) {
              if (BlocStatus.Loaded == state.status) {
                fiatCurrency = state.fiatCurrency;
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('fiat_currency'.tr()),
                      GestureDetector(
                        onTap: () async {
                          final String? selectedCurrency =
                              await showBottomSheetCurrencySelector(
                                  context: context);
                          if (selectedCurrency != null) {
                            settingsBloc.add(SettingsEvent.selectFiatCurrency(
                                selectedCurrency));
                          }
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              fiatCurrency.toString().toUpperCase(),
                              style: TextStyles.overlay3Bold14,
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              CupertinoIcons.right_chevron,
                              size: 18.sp,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('switch_to_day_mode'.tr()),
                      const Icon(
                        CupertinoIcons.sun_max,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('language'.tr()),
                      GestureDetector(
                        onTap: () async {
                          final String? selectedLanguage =
                              await showBottomSheetLanguageSelector(
                                  context: context);
                          setState(() {
                            language = selectedLanguage;
                            if (language == 'russian'.tr()) {
                              context.setLocale(const Locale('ru'));
                              context.router.push(const NavigationPageRouter());
                            }
                            if (language == 'english'.tr()) {
                              context.setLocale(const Locale('en'));
                              context.router.push(const NavigationPageRouter());
                            }
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              context.locale.toString() == 'en'
                                  ? 'english'.tr()
                                  : 'russian'.tr(),
                              style: TextStyles.overlay3Bold14,
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              CupertinoIcons.right_chevron,
                              size: 18.sp,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
