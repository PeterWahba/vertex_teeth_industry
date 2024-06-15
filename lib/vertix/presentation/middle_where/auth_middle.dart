import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../core/pages/pages_name.dart';
import '../../../core/utils/string_shared_prefs.dart';

class AuthMiddleWhere extends GetMiddleware {
  //
  SettingGetServicesClass servicesClass = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    //
    //
    final userSid =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    if (userSid != null && route != null) {
      //
      if (route == AllPagesName.onBoardScren) {
        //
        return const RouteSettings(name: AllPagesName.navBotomScrn);
        //
      } else {
        return null;
      }
      //
    } else {
      //
      return null;
    }
  }
}
