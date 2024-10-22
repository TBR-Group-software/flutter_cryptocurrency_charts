// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:clean_app/presentation/page/navigation_page.dart' as _i2;
import 'package:clean_app/presentation/page/portfolio/portfolio_page.dart'
    as _i3;
import 'package:clean_app/presentation/page/profile/profile_page.dart' as _i4;
import 'package:clean_app/presentation/page/ratings/detail_info_page.dart'
    as _i1;
import 'package:clean_app/presentation/page/ratings/ratings_page.dart' as _i5;
import 'package:fl_chart/fl_chart.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.DetailInfoPage]
class DetailInfoRoute extends _i6.PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute({
    required String coinName,
    required num currentPrice,
    required num priceChangePercentage,
    required num marketCap,
    required String imageUrl,
    required int coinIndex,
    required String symbol,
    required List<double>? sparkline,
    required List<_i7.FlSpot>? flSpotList,
    required String fiatCurrency,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetailInfoRoute.name,
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
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailInfoRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailInfoRouteArgs>();
      return _i1.DetailInfoPage(
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
        key: args.key,
      );
    },
  );
}

class DetailInfoRouteArgs {
  const DetailInfoRouteArgs({
    required this.coinName,
    required this.currentPrice,
    required this.priceChangePercentage,
    required this.marketCap,
    required this.imageUrl,
    required this.coinIndex,
    required this.symbol,
    required this.sparkline,
    required this.flSpotList,
    required this.fiatCurrency,
    this.key,
  });

  final String coinName;

  final num currentPrice;

  final num priceChangePercentage;

  final num marketCap;

  final String imageUrl;

  final int coinIndex;

  final String symbol;

  final List<double>? sparkline;

  final List<_i7.FlSpot>? flSpotList;

  final String fiatCurrency;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DetailInfoRouteArgs{coinName: $coinName, currentPrice: $currentPrice, priceChangePercentage: $priceChangePercentage, marketCap: $marketCap, imageUrl: $imageUrl, coinIndex: $coinIndex, symbol: $symbol, sparkline: $sparkline, flSpotList: $flSpotList, fiatCurrency: $fiatCurrency, key: $key}';
  }
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.NavigationPage();
    },
  );
}

/// generated route for
/// [_i3.PortfolioPage]
class PortfolioRoute extends _i6.PageRouteInfo<void> {
  const PortfolioRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'PortfolioRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PortfolioPage();
    },
  );
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfilePage();
    },
  );
}

/// generated route for
/// [_i5.RatingsPage]
class RatingsRoute extends _i6.PageRouteInfo<void> {
  const RatingsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RatingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i5.RatingsPage();
    },
  );
}
