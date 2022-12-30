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

class SearchResultPage extends StatefulWidget {
  final String query;

  const SearchResultPage({
    required this.query,
    Key? key,
  }) : super(key: key);

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  final SearchBloc _searchBloc = dep_inj.sl.get();

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
                  MediaQuery.of(context).padding.top + 20,
                  24,
                  0,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            _searchBloc.add(ResultPagePop());
                            context.router.replace(const SearchRoute());
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'search_result_for'.tr() + '\'${widget.query}\'',
                          style: TextStyles.searchResultHeader,
                        ),
                      ],
                    ),
                    const SearchPageCoinListWidget(
                      listMode: SearchListMode.Result,
                    ),
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
