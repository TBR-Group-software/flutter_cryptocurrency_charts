import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';

class FiatCurrencySelectedWidget extends StatelessWidget {
  final String currency;
  const FiatCurrencySelectedWidget({
    required this.currency,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(
          context,
          currency.toUpperCase(),
        );
      },
      child: Text(
        currency.toUpperCase(),
        style: TextStyles.overlay3Bold14,
      ),
    );
  }
}
