import 'package:auto_route/auto_route.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          initial: true,
          page: NavigationRoute.page,
          children: <AutoRoute>[
            // Define Ratings route
            AutoRoute(
              page: RatingsRoute.page,
            ),
            // Define Portfolio route
            AutoRoute(
              page: PortfolioRoute.page,
            ),
            // Define Profile route
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(page: DetailInfoRoute.page)
      ];
}
