import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.arrow_back,
      color: Palette.white,
      size: 28,
    );
  }
}
