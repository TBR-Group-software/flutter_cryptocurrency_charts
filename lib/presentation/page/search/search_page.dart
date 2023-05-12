import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/presentation/bloc/search/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/coin_shorted_details_box.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchBloc searchBloc = di.sl.get();
  List<SearchedCoin> coinList = <SearchedCoin>[];
  @override
  void initState() {
    super.initState();
    searchBloc.add(const SearchEvent.getTrendingCoins());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(searchBloc.isClosed);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25.h, 70.h, 25.h, 45.h),
              child: TextFormField(
                onFieldSubmitted: (String value) async {
                  searchBloc.add(SearchEvent.getSearchedCoins(value));
                  context.router
                      .navigate(SearchResultRoute(searchQuery: value));
                },
                style: TextStyles.whiteSemiBold11,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyles.searchText,
                  suffixIconColor: Palette.secondary,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Palette.secondary)),
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Palette.base5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 48.h, left: 24.w),
              child: Text(
                'trending'.tr(),
                style: TextStyles.whiteBold18
                    .copyWith(color: Theme.of(context).hintColor),
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(
              bloc: searchBloc,
              builder: (BuildContext context, SearchState state) {
                if (state.status == BlocStatus.loaded) {
                  coinList = state.coins as List<SearchedCoin>;
                  if (coinList.isEmpty) {
                    return Center(
                      child: Text(
                        'List is empty or error occured',
                        style: TextStyles.whiteBold18,
                      ),
                    );
                  }
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    shrinkWrap: true,
                    itemCount: coinList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CoinShortDetailsBox(
                          coin: coinList[index], coinIndex: index);
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
