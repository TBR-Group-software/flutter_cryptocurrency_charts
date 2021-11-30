import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/widget/change_price_triangle.dart';
import 'package:clean_app/presentation/widget/detail_sparkline_widget.dart';
import 'package:clean_app/presentation/widget/sparkline_widget.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailInfoPage extends StatefulWidget {
  final String coinName;
  final num currentPrice, priceChangePercentage, marketCap;
  final String imageUrl;
  final int coinIndex;
  final String symbol;
  final List<double>? sparkline;
  final List<FlSpot>? flSpotList;
  const DetailInfoPage({
    required this.coinName,
    required this.currentPrice,
    required this.priceChangePercentage,
    required this.marketCap,
    required this.imageUrl,
    required this.coinIndex,
    required this.symbol,
    required this.sparkline,
    required this.flSpotList,
    Key? key,
  }) : super(key: key);

  @override
  _DetailInfoPageState createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
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
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Palette.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Image.network(
                widget.imageUrl,
                width: 30.w,
                height: 30.h,
              ),
              SizedBox(width: 12.w),
              Text(
                widget.symbol.toUpperCase(),
                style: TextStyles.whiteSemiBold14,
              ),
              SizedBox(width: 4.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: Palette.base4,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                ),
                child: Text(
                  '${widget.coinIndex + 1}',
                  style: TextStyles.whiteSemiBold14,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.coinName,
                      style: TextStyles.whiteSemiBold14,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\$${widget.currentPrice.toString()}',
                          style: TextStyles.whiteSemiBold24,
                        ),
                      ),
                      ChangePriceTriangle(
                        priceChangePercentage: widget.priceChangePercentage,
                        fontSize: 24.sp,
                        textStyle: TextStyles.whiteSemiBold14,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              width: MediaQuery.of(context).size.width,
              height: 400.h,
              child: DetailSparklineWidget(
                showBarArea: true,
                sparkline: widget.sparkline,
                flSpotList: widget.flSpotList,
                pricePercentage: widget.priceChangePercentage,
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Palette.base4,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Buy Crypto',
                    style: TextStyles.whiteSemiBold14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
