import 'package:auto_route/auto_route.dart';
import 'package:clean_app/domain/entity/searched_coin.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinShortDetailsBox extends StatelessWidget {
  const CoinShortDetailsBox({
    required this.coin,
    required this.coinIndex,
    super.key,
  });
  final SearchedCoin coin;
  final int coinIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router
          .navigate(DetailInfoRoute(coinId: coin.id, coinIndex: coinIndex)),
      child: Padding(
        padding: EdgeInsets.only(bottom: 31.h),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 21.w),
              child: SizedBox(
                height: 34.h,
                width: 34.w,
                child: Image.network(
                  coin.thumb,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Text(
                coin.name,
                style: TextStyles.whiteBold18
                    .copyWith(color: Theme.of(context).hintColor),
              ),
            ),
            const Spacer(),
            if (coin.marketCap != null)
              Container(
                decoration: const BoxDecoration(
                    color: Palette.base4,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                height: 25.h,
                width: 33.w,
                child: Center(
                  child: Text(
                    coin.marketCap.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyles.whiteSemiBold11,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
