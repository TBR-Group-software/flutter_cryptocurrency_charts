import 'package:clean_app/presentation/widget/shimmers/shimmer_coin_info_box.dart';
import 'package:flutter/material.dart';

class ShimmerCoinListView extends StatelessWidget {
  final int itemCount;
  const ShimmerCoinListView({
    required this.itemCount,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ShimmerCoinInfoBox();
      },
    );
  }
}
