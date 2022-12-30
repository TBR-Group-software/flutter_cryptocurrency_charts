import 'package:auto_route/auto_route.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as dep_inj;
import 'package:clean_app/presentation/bloc/search/search_bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/presentation/widget/search_page_coin_list_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchBloc _searchBloc = dep_inj.sl.get();
  static const OutlineInputBorder _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide(color: Colors.transparent),
  );

  @override
  void initState() {
    super.initState();
    if (_searchBloc.state.topCoins.isEmpty) {
      _searchBloc.add(InitialTrendingCoinsFetch());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocSelector<SearchBloc, SearchState, DetailsStatus>(
        bloc: _searchBloc,
        selector: (SearchState state) {
          return state.detStatus;
        },
        builder: (BuildContext context, DetailsStatus detailsStatus) {
          return Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  24,
                  MediaQuery.of(context).padding.top + 24,
                  24,
                  0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 58.h,
                      margin: EdgeInsets.only(bottom: 44.w),
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (String query) {
                          context.router.replace(
                            SearchResultRoute(query: query),
                          );
                          _searchBloc.add(CoinSearchQuery(query));
                        },
                        style: TextStyles.searchInputStyle,
                        decoration: InputDecoration(
                          hintText: 'search'.tr(),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Palette.primary,
                          ),
                          hintStyle: TextStyles.searchHintStyle,
                          filled: true,
                          fillColor: Palette.searchBase,
                          border: _inputBorder,
                          enabledBorder: _inputBorder,
                          focusColor: Palette.primary,
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(color: Palette.primary),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'top_seven_coins'.tr(),
                        style: TextStyles.searchPageStyle,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const SearchPageCoinListWidget(),
                  ],
                ),
              ),
              if (detailsStatus == DetailsStatus.Fetching)
                const Center(
                  child: CircularProgressIndicator(
                    color: Palette.primary,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
