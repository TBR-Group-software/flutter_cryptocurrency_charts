// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DetailInfoPage]
class DetailInfoRoute extends PageRouteInfo<DetailInfoRouteArgs> {
  DetailInfoRoute({
    required String coinName,
    required num currentPrice,
    required num priceChangePercentage,
    required num marketCap,
    required String imageUrl,
    required int coinIndex,
    required String symbol,
    required List<double>? sparkline,
    required List<FlSpot>? flSpotList,
    required String fiatCurrency,
    Key? key,
    List<PageRouteInfo>? children,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailInfoRouteArgs>();
      return DetailInfoPage(
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

  final List<FlSpot>? flSpotList;

  final String fiatCurrency;

  final Key? key;

  @override
  String toString() {
    return 'DetailInfoRouteArgs{coinName: $coinName, currentPrice: $currentPrice, priceChangePercentage: $priceChangePercentage, marketCap: $marketCap, imageUrl: $imageUrl, coinIndex: $coinIndex, symbol: $symbol, sparkline: $sparkline, flSpotList: $flSpotList, fiatCurrency: $fiatCurrency, key: $key}';
  }
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavigationPage();
    },
  );
}

/// generated route for
/// [PortfolioPage]
class PortfolioRoute extends PageRouteInfo<void> {
  const PortfolioRoute({List<PageRouteInfo>? children})
      : super(
          PortfolioRoute.name,
          initialChildren: children,
        );

  static const String name = 'PortfolioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PortfolioPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [RatingsPage]
class RatingsRoute extends PageRouteInfo<void> {
  const RatingsRoute({List<PageRouteInfo>? children})
      : super(
          RatingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return RatingsPage();
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}
