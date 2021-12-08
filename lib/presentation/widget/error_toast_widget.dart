import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {
  void errorConnectionToast() {
    Fluttertoast.showToast(
      msg: 'No internet connection, please check it and try it again.',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Palette.primary,
      textColor: Palette.background,
      fontSize: 16.0,
    );
  }
}
