import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors_app.dart';

class ThemeApp {
  static ThemeData themeData = ThemeData(
      useMaterial3: false,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: AppColors.purpleMainColor),
      scaffoldBackgroundColor: AppColors.backGroundAndTextWhite,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.backGroundAndTextWhite,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: AppColors.backGroundAndTextWhite,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      ));
}
