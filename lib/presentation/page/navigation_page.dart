import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/presentation/bloc/initial_data/initial_data_bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final InitialDataBloc initialDataBloc = di.sl.get();
  int pageNumber = 1;

  @override
  void initState() {
    super.initState();
    initialDataBloc.add(
        InitialDataEvent.getMarketCoins(order, pageNumber, perPage100, 'true'));
    initialDataBloc.add(const InitialDataEvent.getGlobalData());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Builder(builder: (BuildContext context) {
        return BlocBuilder<InitialDataBloc, InitialDataState>(
            bloc: initialDataBloc,
            builder: (BuildContext context, InitialDataState state) {
              if (state.status == BlocStatus.Loading) {
                return const CircularProgressIndicator();
              }
              return AutoTabsScaffold(
                backgroundColor: Theme.of(context).primaryColor,
                routes: const <PageRouteInfo<dynamic>>[
                  RatingsRoute(),
                  PortfolioRoute(),
                  ProfileRoute(),
                ],
                bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 12.w,
                      right: 12.w,
                      bottom: 12.h,
                      top: 4.h,
                    ),
                    child: SalomonBottomBar(
                      onTap: tabsRouter.setActiveIndex,
                      selectedItemColor: Theme.of(context).focusColor,
                      items: <SalomonBottomBarItem>[
                        SalomonBottomBarItem(
                          activeIcon: Icon(
                            Icons.bar_chart,
                            color: Theme.of(context).focusColor,
                          ),
                          icon: Icon(
                            Icons.bar_chart,
                            color: Theme.of(context).hintColor,
                          ),
                          title: Text(
                            'ratings'.tr(),
                          ),
                        ),
                        SalomonBottomBarItem(
                          activeIcon: Icon(
                            Icons.pie_chart,
                            color: Theme.of(context).focusColor,
                          ),
                          icon: Icon(
                            Icons.pie_chart,
                            color: Theme.of(context).hintColor,
                          ),
                          title: Text(
                            'market'.tr(),
                          ),
                        ),
                        SalomonBottomBarItem(
                          activeIcon: Icon(
                            Icons.manage_accounts,
                            color: Theme.of(context).focusColor,
                          ),
                          icon: Icon(
                            Icons.manage_accounts,
                            color: Theme.of(context).hintColor,
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
            });
      }),
    );
  }
}
