import 'package:clean_app/backbone/dependency_injection.dart' as dep_inj;
import 'package:clean_app/presentation/bloc/search/search_bloc.dart';
import 'package:clean_app/presentation/widget/error_toast_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchBloc _searchBloc = dep_inj.sl.get();

  Toasts toasts = Toasts();

  @override
  void initState() {
    super.initState();
    _searchBloc.add(InitialTrendingCoinsFetch());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
