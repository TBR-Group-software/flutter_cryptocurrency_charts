import 'package:auto_route/auto_route.dart';
import 'package:clean_app/presentation/page/navigation_page.dart';
import 'package:clean_app/presentation/page/portfolio/portfolio_page.dart';
import 'package:clean_app/presentation/page/profile/profile_page.dart';
import 'package:clean_app/presentation/page/ratings/detail_info_page.dart';
import 'package:clean_app/presentation/page/ratings/ratings_page.dart';
import 'package:clean_app/presentation/page/search/search_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: NavigationRoute.page,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: RatingsRoute.page,
              children: <AutoRoute>[
                AutoRoute(
                  page: RatingsRoute.page,
                ),
                AutoRoute(
                  page: DetailInfoRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: SearchRoute.page,
            ),
            AutoRoute(
              page: PortfolioRoute.page,
              children: <AutoRoute>[
                AutoRoute(
                  page: PortfolioRoute.page,
                ),
                AutoRoute(
                  page: DetailInfoRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
      ];
}
