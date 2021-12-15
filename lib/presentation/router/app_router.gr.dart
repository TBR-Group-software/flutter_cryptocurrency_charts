// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:fl_chart/fl_chart.dart' as _i8;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i7;

import '../page/navigation_page.dart' as _i1;
import '../page/portfolio/portfolio_page.dart' as _i6;
import '../page/profile/profile_page.dart' as _i3;
import '../page/ratings/detail_info_page.dart' as _i5;
import '../page/ratings/ratings_page.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    NavigationPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    RatingsPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PortfolioPageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfilePageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    RatingsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RatingsPage());
    },
    DetailInfoRoute.name: (routeData) {
      final args = routeData.argsAs<DetailInfoRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
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
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PortfolioPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/',
            redirectTo: 'presentation/navigation_page',
            fullMatch: true),
        _i2.RouteConfig(NavigationPageRouter.name,
            path: 'presentation/navigation_page',
            children: [
              _i2.RouteConfig(RatingsPageRouter.name,
                  path: 'presentation/page/ratings/ratings_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i2.RouteConfig(RatingsRoute.name,
                        path: '', parent: RatingsPageRouter.name),
                    _i2.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: RatingsPageRouter.name)
                  ]),
              _i2.RouteConfig(PortfolioPageRouter.name,
                  path: 'presentation/page/portfolio/portfolio_page',
                  parent: NavigationPageRouter.name,
                  children: [
                    _i2.RouteConfig(PortfolioRoute.name,
                        path: '', parent: PortfolioPageRouter.name),
                    _i2.RouteConfig(DetailInfoRoute.name,
                        path: '', parent: PortfolioPageRouter.name)
                  ]),
              _i2.RouteConfig(ProfilePageRouter.name,
                  path: 'presentation/page/profile/profile_page',
                  parent: NavigationPageRouter.name)
            ])
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationPageRouter extends _i2.PageRouteInfo<void> {
  const NavigationPageRouter({List<_i2.PageRouteInfo>? children})
      : super(NavigationPageRouter.name,
            path: 'presentation/navigation_page', initialChildren: children);

  static const String name = 'NavigationPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RatingsPageRouter extends _i2.PageRouteInfo<void> {
  const RatingsPageRouter({List<_i2.PageRouteInfo>? children})
      : super(RatingsPageRouter.name,
            path: 'presentation/page/ratings/ratings_page',
            initialChildren: children);

  static const String name = 'RatingsPageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PortfolioPageRouter extends _i2.PageRouteInfo<void> {
  const PortfolioPageRouter({List<_i2.PageRouteInfo>? children})
      : super(PortfolioPageRouter.name,
            path: 'presentation/page/portfolio/portfolio_page',
            initialChildren: children);

  static const String name = 'PortfolioPageRouter';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfilePageRouter extends _i2.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(ProfilePageRouter.name,
            path: 'presentation/page/profile/profile_page');

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i4.RatingsPage]
class RatingsRoute extends _i2.PageRouteInfo<void> {
  const RatingsRoute() : super(RatingsRoute.name, path: '');

  static const String name = 'RatingsRoute';
}

/// generated route for
/// [_i5.DetailInfoPage]
class DetailInfoRoute extends _i2.PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute(
      {required String coinName,
      required num currentPrice,
      required num priceChangePercentage,
      required num marketCap,
      required String imageUrl,
      required int coinIndex,
      required String symbol,
      required List<double>? sparkline,
      required List<_i8.FlSpot>? flSpotList,
      required String fiatCurrency,
      _i9.Key? key})
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

  final List<_i8.FlSpot>? flSpotList;

  final String fiatCurrency;

  final _i9.Key? key;

  @override
  String toString() {
    return 'DetailInfoRouteArgs{coinName: $coinName, currentPrice: $currentPrice, priceChangePercentage: $priceChangePercentage, marketCap: $marketCap, imageUrl: $imageUrl, coinIndex: $coinIndex, symbol: $symbol, sparkline: $sparkline, flSpotList: $flSpotList, fiatCurrency: $fiatCurrency, key: $key}';
  }
}

/// generated route for
/// [_i6.PortfolioPage]
class PortfolioRoute extends _i2.PageRouteInfo<void> {
  const PortfolioRoute() : super(PortfolioRoute.name, path: '');

  static const String name = 'PortfolioRoute';
}
