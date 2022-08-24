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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:fl_chart/fl_chart.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../page/navigation_page.dart' as _i1;
import '../page/portfolio/portfolio_page.dart' as _i6;
import '../page/profile/profile_page.dart' as _i3;
import '../page/ratings/detail_info_page.dart' as _i5;
import '../page/ratings/ratings_page.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    NavigationPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    RatingsPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PortfolioPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfilePageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    RatingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RatingsPage());
    },
    DetailInfoRoute.name: (routeData) {
      final args = routeData.argsAs<DetailInfoRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailInfoPage(
              coinName: args.coinName,
              currentPrice: args.currentPrice,
              priceChangePercentage: args.priceChangePercentage,
              marketCap: args.marketCap,
              imageUrl: args.imageUrl,
              coinIndex: args.coinIndex,
              symbol: args.symbol,
              sparkline: args.sparkline,
              flSpotList: args.flSpotList,
              fiatCurrency: args.fiatCurrency,
              key: args.key));
    },
    PortfolioRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PortfolioPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/',
            redirectTo: 'presentation/navigation_page',
            fullMatch: true),
        _i7.RouteConfig(NavigationPageRouter.name,
            path: 'presentation/navigation_page',
            children: [
              _i7.RouteConfig(RatingsPageRouter.name,
                  path: 'presentation/page/ratings/ratings_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i7.RouteConfig(RatingsRoute.name,
                        path: '', parent: RatingsPageRouter.name),
                    _i7.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: RatingsPageRouter.name)
                  ]),
              _i7.RouteConfig(PortfolioPageRouter.name,
                  path: 'presentation/page/portfolio/portfolio_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i7.RouteConfig(PortfolioRoute.name,
                        path: '', parent: PortfolioPageRouter.name),
                    _i7.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: PortfolioPageRouter.name)
                  ]),
              _i7.RouteConfig(ProfilePageRouter.name,
                  path: 'presentation/page/profile/profile_page',
                  parent: NavigationPageRouter.name)
            ])
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationPageRouter extends _i7.PageRouteInfo<void> {
  const NavigationPageRouter({List<_i7.PageRouteInfo>? children})
      : super(NavigationPageRouter.name,
            path: 'presentation/navigation_page', initialChildren: children);

  static const String name = 'NavigationPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RatingsPageRouter extends _i7.PageRouteInfo<void> {
  const RatingsPageRouter({List<_i7.PageRouteInfo>? children})
      : super(RatingsPageRouter.name,
            path: 'presentation/page/ratings/ratings_page',
            initialChildren: children);

  static const String name = 'RatingsPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PortfolioPageRouter extends _i7.PageRouteInfo<void> {
  const PortfolioPageRouter({List<_i7.PageRouteInfo>? children})
      : super(PortfolioPageRouter.name,
            path: 'presentation/page/portfolio/portfolio_page',
            initialChildren: children);

  static const String name = 'PortfolioPageRouter';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfilePageRouter extends _i7.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(ProfilePageRouter.name,
            path: 'presentation/page/profile/profile_page');

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i4.RatingsPage]
class RatingsRoute extends _i7.PageRouteInfo<void> {
  const RatingsRoute() : super(RatingsRoute.name, path: '');

  static const String name = 'RatingsRoute';
}

/// generated route for
/// [_i5.DetailInfoPage]
class DetailInfoRoute extends _i7.PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute(
      {required String coinName,
      required num currentPrice,
      required num priceChangePercentage,
      required num marketCap,
      required String imageUrl,
      required int coinIndex,
      required String symbol,
      required List<double>? sparkline,
      required List<_i9.FlSpot>? flSpotList,
      required String fiatCurrency,
      _i8.Key? key})
      : super(DetailInfoRoute.name,
            path: '',
            args: DetailInfoRouteArgs(
                coinName: coinName,
                currentPrice: currentPrice,
                priceChangePercentage: priceChangePercentage,
                marketCap: marketCap,
                imageUrl: imageUrl,
                coinIndex: coinIndex,
                symbol: symbol,
                sparkline: sparkline,
                flSpotList: flSpotList,
                fiatCurrency: fiatCurrency,
                key: key));

  static const String name = 'DetailInfoRoute';
}

class DetailInfoRouteArgs {
  const DetailInfoRouteArgs(
      {required this.coinName,
      required this.currentPrice,
      required this.priceChangePercentage,
      required this.marketCap,
      required this.imageUrl,
      required this.coinIndex,
      required this.symbol,
      required this.sparkline,
      required this.flSpotList,
      required this.fiatCurrency,
      this.key});

  final String coinName;

  final num currentPrice;

  final num priceChangePercentage;

  final num marketCap;

  final String imageUrl;

  final int coinIndex;

  final String symbol;

  final List<double>? sparkline;

  final List<_i9.FlSpot>? flSpotList;

  final String fiatCurrency;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DetailInfoRouteArgs{coinName: $coinName, currentPrice: $currentPrice, priceChangePercentage: $priceChangePercentage, marketCap: $marketCap, imageUrl: $imageUrl, coinIndex: $coinIndex, symbol: $symbol, sparkline: $sparkline, flSpotList: $flSpotList, fiatCurrency: $fiatCurrency, key: $key}';
  }
}

/// generated route for
/// [_i6.PortfolioPage]
class PortfolioRoute extends _i7.PageRouteInfo<void> {
  const PortfolioRoute() : super(PortfolioRoute.name, path: '');

  static const String name = 'PortfolioRoute';
}
