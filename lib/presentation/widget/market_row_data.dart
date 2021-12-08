import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';

class MarketRowData extends StatelessWidget {
  final num activeCryptocurrencies, markets;
  const MarketRowData({
    required this.activeCryptocurrencies,
    required this.markets,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Active Coins',
              style: TextStyles.overlay3Bold14,
            ),
            Text(
              activeCryptocurrencies.toString(),
              style: TextStyles.whiteSemiBold14,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Markets',
              style: TextStyles.overlay3Bold14,
            ),
            Text(
              markets.toString(),
              style: TextStyles.whiteSemiBold14,
            )
          ],
        ),
      ],
    );
  }
}