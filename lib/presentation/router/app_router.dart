import 'package:auto_route/auto_route.dart';
import 'package:clean_app/presentation/page/discover/discover_page.dart';
import 'package:clean_app/presentation/page/home/home_page.dart';
import 'package:clean_app/presentation/page/navigation_page.dart';
import 'package:clean_app/presentation/page/portfolio/portfolio_page.dart';
import 'package:clean_app/presentation/page/profile/profile_page.dart';
import 'package:clean_app/presentation/page/ratings/detail_info_page.dart';
import 'package:clean_app/presentation/page/ratings/ratings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      path: 'presentation/navigation_page',
      name: 'NavigationPageRouter',
      initial: true,
      page: NavigationPage,
      children: <AutoRoute<dynamic>>[
        AutoRoute<dynamic>(
          path: 'presentation/page/home/home_page',
          name: 'HomePageRouter',
          page: HomePage,
          // page: EmptyRouterPage,
          // children: [
          //   AutoRoute<dynamic>(
          //     path: '',
          //     page: HomeScreen,
          //   ),
          //   AutoRoute<dynamic>(
          //     path: '',
          //     page: ItemsScreen,
          //   ),
          // ],
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/ratings/ratings_page',
          name: 'RatingsPageRouter',
          page: EmptyRouterPage,
          children: <AutoRoute<dynamic>>[
            AutoRoute<dynamic>(
              path: '',
              page: RatingsPage,
            ),
            AutoRoute<dynamic>(
              path: '',
              page: DetailInfoPage,
            ),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/portfolio/portfolio_page',
          name: 'PortfolioPageRouter',
          page: PortfolioPage,
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/discover/discover_page',
          name: 'DiscoverPageRouter',
          page: DiscoverPage,
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/profile/profile_page',
          name: 'ProfilePageRouter',
          page: ProfilePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
