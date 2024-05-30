import 'package:flutter/material.dart';

import '../theme/colors_app.dart';

class MethodsWidgetClass {
  //
  //

  static Color colorItemListOrder(String stateorder) {
    //
    switch (stateorder) {
      //
      case 'تم الموافقة':
        return AppColors.skyColor;

      //
      case 'معلق الطلب':
        return AppColors.lightRed;

      //
      case 'تم الالغاء':
        return AppColors.redCancel;

      //
      case 'فارغ':
        return AppColors.lightPurpleEmpty;

      //

      default:
        return AppColors.backGroundAndTextWhite;

      // End Switch
    }
  }
  //
  //

  static Color colorBorderOrderState(String stateorder) {
    //
    switch (stateorder) {
      //
      case 'تم الموافقة':
        return const Color.fromARGB(255, 7, 167, 148);

      //
      case 'معلق الطلب':
        return Color.fromARGB(255, 237, 10, 10);

      //
      case 'تم الالغاء':
        return Color.fromARGB(255, 55, 2, 2);

      //
      case 'فارغ':
        return const Color.fromARGB(255, 56, 16, 237);

      //

      default:
        return AppColors.backGroundAndTextWhite;

      // End Switch
    }
  }
  //
}
