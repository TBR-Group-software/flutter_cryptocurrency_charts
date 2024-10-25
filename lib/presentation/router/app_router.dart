import 'package:auto_route/auto_route.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override // Override the routes getter
  List<AutoRoute> get routes => <AutoRoute>[
        // Define the main route
        AutoRoute(
          //path: 'presentation/page/navigation_page',
          initial: true,
          page: NavigationRoute.page,
          children: <AutoRoute>[
            // Define nested routes for Ratings
            AutoRoute(
              //     path: 'presentation/page/ratings/ratings_page',
              page: RatingsRoute.page,
            ),
            // Define nested routes for Portfolio (similar structure)
            AutoRoute(
              //  path: 'presentation/page/portfolio/portfolio_page',
              page: PortfolioRoute.page,
            ),
            // Define Profile route
            AutoRoute(
              //   path: 'presentation/page/profile/profile_page',
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(page: DetailInfoRoute.page)
      ];
}
