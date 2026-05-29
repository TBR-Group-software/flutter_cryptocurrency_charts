import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/presentation/bloc/initial_data/initial_data_bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/chevron_icon.dart';
import 'package:clean_app/presentation/widget/fiat_currency_bottom_sheet.dart';
import 'package:clean_app/presentation/widget/language_bottom_sheet_selector.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final SettingsBloc settingsBloc = di.sl.get();
  final InitialDataBloc initialDataBloc = di.sl.get();

  @override
  void initState() {
    super.initState();
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
  }

  String? fiatCurrency;
  String? themeType;
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.w),
          width: 300.w,
          height: 160.h,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(16.r),
            ),
          ),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            bloc: settingsBloc,
            builder: (_, SettingsState state) {
              if (BlocStatus.Loaded == state.status) {
                fiatCurrency = state.fiatCurrency;
                themeType = state.themeType;
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'fiat_currency'.tr(),
                        style: TextStyles.semiBold14
                            .copyWith(color: Theme.of(context).hintColor),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final String? selectedCurrency =
                              await showBottomSheetCurrencySelector(
                                  context: context);
                          if (selectedCurrency != null) {
                            settingsBloc.add(SettingsEvent.selectFiatCurrency(
                                selectedCurrency));
                            initialDataBloc.add(
                                const InitialDataEvent.getMarketCoins(
                                    order, 1, perPage100, 'true'));
                            initialDataBloc
                                .add(const InitialDataEvent.getGlobalData());
                          }
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              fiatCurrency.toString().toUpperCase(),
                              style: TextStyles.overlay3Bold14,
                            ),
                            SizedBox(width: 4.w),
                            const ChevronIcon(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (themeType == 'night') {
                        settingsBloc
                            .add(const SettingsEvent.selectTheme('day'));
                      } else {
                        settingsBloc
                            .add(const SettingsEvent.selectTheme('night'));
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          themeType == 'night'
                              ? 'switch_to_day_mode'.tr()
                              : 'switch_to_night_mode'.tr(),
                          style: TextStyles.semiBold14
                              .copyWith(color: Theme.of(context).hintColor),
                        ),
                        Icon(
                          themeType == 'night'
                              ? CupertinoIcons.sun_max
                              : CupertinoIcons.moon,
                          color: Theme.of(context).hintColor,
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'language'.tr(),
                        style: TextStyles.semiBold14
                            .copyWith(color: Theme.of(context).hintColor),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final String? selectedLanguage =
                              await showBottomSheetLanguageSelector(
                                  context: context);
                          setState(() {
                            language = selectedLanguage;
                            if (language == 'russian'.tr()) {
                              context.setLocale(const Locale('ru'));
                              context.router.push(const NavigationRoute());
                            }
                            if (language == 'english'.tr()) {
                              context.setLocale(const Locale('en'));
                              context.router.push(const NavigationRoute());
                            }
                            if (language == 'ukranian'.tr()) {
                              context.setLocale(const Locale('uk'));
                              context.router.push(const NavigationRoute());
                            }
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              _getLocaleTitle(context.locale.toString()),
                              style: TextStyles.overlay3Bold14,
                            ),
                            SizedBox(width: 4.w),
                            const ChevronIcon(),
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

String _getLocaleTitle(
  String locale,
) {
  switch (locale) {
    case 'en':
      return 'English';
    case 'ru':
      return 'Русский';
    case 'uk':
      return 'Українська';
    default:
      return 'English';
  }
}
