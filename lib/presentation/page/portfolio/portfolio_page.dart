import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/domain/entity/global_data.dart';
import 'package:clean_app/domain/entity/market_cap_percentage.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/widget/pie_chart_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List<MarketCapPercentage> marketCapList = <MarketCapPercentage>[];

  final GlobalDataBloc globalDataBloc = di.sl.get();
  @override
  void initState() {
    super.initState();
    globalDataBloc.add(const GlobalDataEvent.getGlobalData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.h),
        child: Container(
          color: Palette.base1,
          padding: EdgeInsets.only(top: 50.h, bottom: 8.h),
          child: Row(
            children: <Widget>[
              Text(
                'Market Data',
                style: TextStyles.whiteSemiBold14,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<GlobalDataBloc, GlobalDataState>(
          bloc: globalDataBloc,
          builder: (_, GlobalDataState state) {
            if (state.status == BlocStatus.Loading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Palette.primary,
                ),
              );
            } else {
              marketCapList =
                  state.globalData!.marketCapPercentage.getRange(0, 5).toList();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //width: 250.w,
                    height: 300.h,
                    child: PieChartWidget(
                      marketCapList: marketCapList,
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: marketCapList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          '${state.globalData?.marketCapPercentage[index].coinSymbol.toString().toUpperCase()} : ${state.globalData?.marketCapPercentage[index].percentage}%',
                          style: TextStyles.whiteSemiBold14,
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
