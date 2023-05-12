// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../page/navigation_page.dart' as _i1;
import '../page/portfolio/portfolio_page.dart' as _i6;
import '../page/profile/profile_page.dart' as _i3;
import '../page/ratings/detail_info_page.dart' as _i5;
import '../page/ratings/ratings_page.dart' as _i4;
import '../page/search/search_page.dart' as _i7;
import '../page/search/search_result.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    NavigationPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    RatingsPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PortfolioPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfilePageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    SearchPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    RatingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RatingsPage());
    },
    DetailInfoRoute.name: (routeData) {
      final args = routeData.argsAs<DetailInfoRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailInfoPage(
              coinId: args.coinId, coinIndex: args.coinIndex, key: args.key));
    },
    PortfolioRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PortfolioPage());
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SearchPage());
    },
    SearchResultRoute.name: (routeData) {
      final args = routeData.argsAs<SearchResultRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.SearchResultPage(
              searchQuery: args.searchQuery, key: args.key));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/',
            redirectTo: 'presentation/navigation_page',
            fullMatch: true),
        _i9.RouteConfig(NavigationPageRouter.name,
            path: 'presentation/navigation_page',
            children: [
              _i9.RouteConfig(RatingsPageRouter.name,
                  path: 'presentation/page/ratings/ratings_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i9.RouteConfig(RatingsRoute.name,
                        path: '', parent: RatingsPageRouter.name),
                    _i9.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: RatingsPageRouter.name)
                  ]),
              _i9.RouteConfig(PortfolioPageRouter.name,
                  path: 'presentation/page/portfolio/portfolio_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i9.RouteConfig(PortfolioRoute.name,
                        path: '', parent: PortfolioPageRouter.name),
                    _i9.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: PortfolioPageRouter.name)
                  ]),
              _i9.RouteConfig(ProfilePageRouter.name,
                  path: 'presentation/page/profile/profile_page',
                  parent: NavigationPageRouter.name),
              _i9.RouteConfig(SearchPageRouter.name,
                  path: 'presentation/page/search/search_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i9.RouteConfig(SearchRoute.name,
                        path: '', parent: SearchPageRouter.name),
                    _i9.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: SearchPageRouter.name),
                    _i9.RouteConfig(SearchResultRoute.name,
                        path: '', parent: SearchPageRouter.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationPageRouter extends _i9.PageRouteInfo<void> {
  const NavigationPageRouter({List<_i9.PageRouteInfo>? children})
      : super(NavigationPageRouter.name,
            path: 'presentation/navigation_page', initialChildren: children);

  static const String name = 'NavigationPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RatingsPageRouter extends _i9.PageRouteInfo<void> {
  const RatingsPageRouter({List<_i9.PageRouteInfo>? children})
      : super(RatingsPageRouter.name,
            path: 'presentation/page/ratings/ratings_page',
            initialChildren: children);

  static const String name = 'RatingsPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PortfolioPageRouter extends _i9.PageRouteInfo<void> {
  const PortfolioPageRouter({List<_i9.PageRouteInfo>? children})
      : super(PortfolioPageRouter.name,
            path: 'presentation/page/portfolio/portfolio_page',
            initialChildren: children);

  static const String name = 'PortfolioPageRouter';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfilePageRouter extends _i9.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(ProfilePageRouter.name,
            path: 'presentation/page/profile/profile_page');

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchPageRouter extends _i9.PageRouteInfo<void> {
  const SearchPageRouter({List<_i9.PageRouteInfo>? children})
      : super(SearchPageRouter.name,
            path: 'presentation/page/search/search_page',
            initialChildren: children);

  static const String name = 'SearchPageRouter';
}

/// generated route for
/// [_i4.RatingsPage]
class RatingsRoute extends _i9.PageRouteInfo<void> {
  const RatingsRoute() : super(RatingsRoute.name, path: '');

  static const String name = 'RatingsRoute';
}

/// generated route for
/// [_i5.DetailInfoPage]
class DetailInfoRoute extends _i9.PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute(
      {required String coinId, required int coinIndex, _i10.Key? key})
      : super(DetailInfoRoute.name,
            path: '',
            args: DetailInfoRouteArgs(
                coinId: coinId, coinIndex: coinIndex, key: key));

  static const String name = 'DetailInfoRoute';
}

class DetailInfoRouteArgs {
  const DetailInfoRouteArgs(
      {required this.coinId, required this.coinIndex, this.key});

  final String coinId;

  final int coinIndex;

  final _i10.Key? key;

  @override
  String toString() {
    return 'DetailInfoRouteArgs{coinId: $coinId, coinIndex: $coinIndex, key: $key}';
  }
}

/// generated route for
/// [_i6.PortfolioPage]
class PortfolioRoute extends _i9.PageRouteInfo<void> {
  const PortfolioRoute() : super(PortfolioRoute.name, path: '');

  static const String name = 'PortfolioRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i8.SearchResultPage]
class SearchResultRoute extends _i9.PageRouteInfo<SearchResultRouteArgs> {
  SearchResultRoute({required String searchQuery, _i10.Key? key})
      : super(SearchResultRoute.name,
            path: '',
            args: SearchResultRouteArgs(searchQuery: searchQuery, key: key));

  static const String name = 'SearchResultRoute';
}

class SearchResultRouteArgs {
  const SearchResultRouteArgs({required this.searchQuery, this.key});

  final String searchQuery;

  final _i10.Key? key;

  @override
  String toString() {
    return 'SearchResultRouteArgs{searchQuery: $searchQuery, key: $key}';
  }
}
