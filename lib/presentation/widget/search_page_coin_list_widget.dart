import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as dep_inj;
import 'package:clean_app/domain/entity/coin.dart';
import 'package:clean_app/domain/entity/coin_brief_model.dart';
import 'package:clean_app/presentation/bloc/search/search_bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPageCoinListWidget extends StatefulWidget {
  final SearchListMode listMode;

  const SearchPageCoinListWidget({
    Key? key,
    this.listMode = SearchListMode.Trending,
  }) : super(key: key);

  @override
  State<SearchPageCoinListWidget> createState() =>
      _SearchPageCoinListWidgetState();
}

class _SearchPageCoinListWidgetState extends State<SearchPageCoinListWidget> {
  final SearchBloc _searchBloc = dep_inj.sl.get();
  final SettingsBloc _settingsBloc = dep_inj.sl.get();
  final Toasts _toasts = Toasts();
  int? _selectCoinMarketRank;
  String? fiatCurrency;

  @override
  void initState() {
    super.initState();
    fiatCurrency = _settingsBloc.state.fiatCurrency;
    if (fiatCurrency == null) {
      _settingsBloc.add(const SettingsEvent.getFiatCurrency());
    }
    _settingsBloc.stream.listen(
      (SettingsState state) {
        if (state.status == BlocStatus.Loaded) {
          setState(() {
            fiatCurrency = state.fiatCurrency;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocConsumer<SearchBloc, SearchState>(
        bloc: _searchBloc,
        listenWhen: _isSearchBlocListen,
        listener: _handleSearchBlocListening,
        builder: (BuildContext context, SearchState state) {
          final BlocStatus blocStatus = state.blocStatus;
          final List<CoinBriefModel> coinsList =
              widget.listMode == SearchListMode.Trending
                  ? state.topCoins
                  : state.searchedCoins;

          if (blocStatus == BlocStatus.Loading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Palette.primary,
              ),
            );
          } else if (blocStatus == BlocStatus.Loaded) {
            return ListView.builder(
              itemCount: coinsList.length,
              itemBuilder: (BuildContext context, int index) {
                final CoinBriefModel coinData = coinsList[index];
                final int? marketCapRank = coinData.marketCapRank;

                return GestureDetector(
                  onTap: () => _handleCoinTap(coinData),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.network(
                      coinData.thumb,
                      height: 34.h,
                      width: 34.w,
                    ),
                    title: Text(
                      coinData.name,
                      style: TextStyles.searchPageStyle,
                    ),
                    trailing: Container(
                      height: 25.w,
                      width: 33.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Palette.base4,
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                      child: Text(
                        marketCapRank != null
                            ? '${coinData.marketCapRank}'
                            : 'N/A',
                        style: _marketCapRankSelect(marketCapRank),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            _toasts.errorConnectionToast();
            return const Center(
              child: SizedBox(),
            );
          }
        },
      ),
    );
  }

  bool _isSearchBlocListen(SearchState oldState, SearchState newState) {
    return oldState.singleCoinData?.id != newState.singleCoinData?.id;
  }

  void _handleSearchBlocListening(BuildContext context, SearchState state) {
    final Coin? coinData = state.singleCoinData!;
    final List<FlSpot> flSpotList = <FlSpot>[];
    final List<double> newSparkline = <double>[];
    if (coinData == null) {
      return;
    }

    double i = 0;
    coinData.sparkline?.forEach((dynamic element) {
      i++;
      newSparkline.add(element as double);
      flSpotList.add(FlSpot(i, element));
    });

    context.router.push(
      DetailInfoRoute(
        coinIndex: _selectCoinMarketRank,
        coinName: coinData.name!,
        currentPrice: coinData.currentPrice!,
        imageUrl: coinData.image!,
        symbol: coinData.symbol!,
        priceChangePercentage: coinData.priceChangePercentage!,
        marketCap: coinData.marketCap!,
        sparkline: newSparkline,
        flSpotList: flSpotList,
        fiatCurrency: fiatCurrency.toString(),
      ),
    );
  }

  void _handleCoinTap(CoinBriefModel coinData) {
    final String? currency = fiatCurrency;
    final String coinId = coinData.id;
    final int? marketCapRank = coinData.marketCapRank;
    _selectCoinMarketRank =
        marketCapRank == null ? marketCapRank : marketCapRank - 1;
    if (currency != null) {
      _searchBloc.add(
        CoinTapForDetails(
          coinID: coinId,
          currency: currency,
        ),
      );
    }
  }

  TextStyle _marketCapRankSelect(int? capRank) {
    if (capRank == null || '$capRank'.length < 4) {
      return TextStyles.searchMarketCapRank;
    } else {
      return TextStyles.searchMarketCapRankS;
    }
  }
}

enum SearchListMode {
  Trending,
  Result,
}
