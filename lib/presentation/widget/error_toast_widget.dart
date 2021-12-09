import 'package:clean_app/theme/palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {
  void errorConnectionToast() {
    Fluttertoast.showToast(
      msg: 'no_internet_connection'.tr(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Palette.primary,
      textColor: Palette.background,
      fontSize: 16.0,
    );
  }
}
