import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_back,
      color: Theme.of(context).hintColor,
      size: 28,
    );
  }
}
