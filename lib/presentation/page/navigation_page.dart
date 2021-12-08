import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:easy_localization/easy_localization.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final SettingsBloc settingsBloc = di.sl.get();
  @override
  void initState() {
    super.initState();
    settingsBloc.add(const SettingsEvent.getFiatCurrency());
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Palette.background,
      routes: const <PageRouteInfo<dynamic>>[
        RatingsPageRouter(),
        PortfolioPageRouter(),
        ProfilePageRouter(),
      ],
      bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
        return Container(
          color: Palette.base1,
          padding: EdgeInsets.only(
            left: 12.w,
            right: 12.w,
            bottom: 12.h,
            top: 4.h,
          ),
          child: SalomonBottomBar(
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: Palette.primary,
            // ignore: always_specify_types
            items: [
              SalomonBottomBarItem(
                activeIcon: const Icon(
                  Icons.bar_chart,
                  color: Palette.primary,
                ),
                icon: const Icon(
                  Icons.bar_chart,
                  color: Palette.overlay1,
                ),
                title: Text(
                  'ratings'.tr(),
                ),
              ),
              SalomonBottomBarItem(
                activeIcon: const Icon(
                  Icons.pie_chart,
                  color: Palette.primary,
                ),
                icon: const Icon(
                  Icons.pie_chart,
                  color: Palette.overlay1,
                ),
                title: Text(
                  'market'.tr(),
                ),
              ),
              SalomonBottomBarItem(
                activeIcon: const Icon(
                  Icons.manage_accounts,
                  color: Palette.primary,
                ),
                icon: const Icon(
                  Icons.manage_accounts,
                  color: Palette.overlay1,
                ),
                title: Text(
                  'settings'.tr(),
                ),
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
          ),
        );
      },
    );
  }
}
