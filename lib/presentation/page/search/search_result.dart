import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/presentation/bloc/search/bloc.dart';
import 'package:clean_app/presentation/widget/coin_shorted_details_box.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({
    required this.searchQuery,
    super.key,
  });
  final String searchQuery;
  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  List<SearchedCoin> coinsList = <SearchedCoin>[];
  final SearchBloc searchBloc = di.sl.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.background,
          leading: BackButton(
            onPressed: () {
              searchBloc.add(const SearchEvent.getTrendingCoins());
              context.router.pop();
            },
          ),
          title: Text(
            'Search results for: ${widget.searchQuery}',
            style: TextStyles.whiteBold18,
          ),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          bloc: searchBloc,
          builder: (BuildContext context, SearchState state) {
            coinsList = state.coins as List<SearchedCoin>;
            if (coinsList.isEmpty) {
              return Center(
                child: Text(
                  'List is empty..',
                  style: TextStyles.whiteBold18,
                ),
              );
            }
            if (state.status == BlocStatus.loaded) {
              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                shrinkWrap: true,
                itemCount: coinsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CoinShortDetailsBox(
                      coin: coinsList[index], coinIndex: index);
                },
              );
            } else if (state.status == BlocStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ));
  }
}
