// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:fl_chart/fl_chart.dart' as _i10;
import 'package:flutter/material.dart' as _i2;

import '../page/discover/discover_page.dart' as _i5;
import '../page/home/home_page.dart' as _i4;
import '../page/navigation_page.dart' as _i3;
import '../page/portfolio/portfolio_page.dart' as _i9;
import '../page/profile/profile_page.dart' as _i6;
import '../page/ratings/detail_info_page.dart' as _i8;
import '../page/ratings/ratings_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    NavigationPageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.NavigationPage();
        }),
    HomePageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomePage();
        }),
    RatingsPageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    PortfolioPageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    DiscoverPageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.DiscoverPage();
        }),
    ProfilePageRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ProfilePage();
        }),
    RatingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.RatingsPage();
        }),
    DetailInfoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetailInfoRouteArgs>();
          return _i8.DetailInfoPage(
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
              key: args.key);
        }),
    PortfolioRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.PortfolioPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/',
            redirectTo: 'presentation/navigation_page',
            fullMatch: true),
        _i1.RouteConfig(NavigationPageRouter.name,
            path: 'presentation/navigation_page',
            children: [
              _i1.RouteConfig(HomePageRouter.name,
                  path: 'presentation/page/home/home_page'),
              _i1.RouteConfig(RatingsPageRouter.name,
                  path: 'presentation/page/ratings/ratings_page',
                  children: [
                    _i1.RouteConfig(RatingsRoute.name, path: ''),
                    _i1.RouteConfig(DetailInfoRoute.name, path: '')
                  ]),
              _i1.RouteConfig(PortfolioPageRouter.name,
                  path: 'presentation/page/portfolio/portfolio_page',
                  children: [
                    _i1.RouteConfig(PortfolioRoute.name, path: ''),
                    _i1.RouteConfig(DetailInfoRoute.name, path: '')
                  ]),
              _i1.RouteConfig(DiscoverPageRouter.name,
                  path: 'presentation/page/discover/discover_page'),
              _i1.RouteConfig(ProfilePageRouter.name,
                  path: 'presentation/page/profile/profile_page')
            ])
      ];
}

class NavigationPageRouter extends _i1.PageRouteInfo<void> {
  const NavigationPageRouter({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: 'presentation/navigation_page', initialChildren: children);

  static const String name = 'NavigationPageRouter';
}

class HomePageRouter extends _i1.PageRouteInfo<void> {
  const HomePageRouter()
      : super(name, path: 'presentation/page/home/home_page');

  static const String name = 'HomePageRouter';
}

class RatingsPageRouter extends _i1.PageRouteInfo<void> {
  const RatingsPageRouter({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: 'presentation/page/ratings/ratings_page',
            initialChildren: children);

  static const String name = 'RatingsPageRouter';
}

class PortfolioPageRouter extends _i1.PageRouteInfo<void> {
  const PortfolioPageRouter({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: 'presentation/page/portfolio/portfolio_page',
            initialChildren: children);

  static const String name = 'PortfolioPageRouter';
}

class DiscoverPageRouter extends _i1.PageRouteInfo<void> {
  const DiscoverPageRouter()
      : super(name, path: 'presentation/page/discover/discover_page');

  static const String name = 'DiscoverPageRouter';
}

class ProfilePageRouter extends _i1.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(name, path: 'presentation/page/profile/profile_page');

  static const String name = 'ProfilePageRouter';
}

class RatingsRoute extends _i1.PageRouteInfo<void> {
  const RatingsRoute() : super(name, path: '');

  static const String name = 'RatingsRoute';
}

class DetailInfoRoute extends _i1.PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute(
      {required String coinName,
      required num currentPrice,
      required num priceChangePercentage,
      required num marketCap,
      required String imageUrl,
      required int coinIndex,
      required String symbol,
      required List<double>? sparkline,
      required List<_i10.FlSpot>? flSpotList,
      required String fiatCurrency,
      _i2.Key? key})
      : super(name,
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

  final List<_i10.FlSpot>? flSpotList;

  final String fiatCurrency;

  final _i2.Key? key;
}

class PortfolioRoute extends _i1.PageRouteInfo<void> {
  const PortfolioRoute() : super(name, path: '');

  static const String name = 'PortfolioRoute';
}
