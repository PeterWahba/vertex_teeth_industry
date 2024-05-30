import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/pages/get_all_pages.dart';
import 'core/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}

// ==========================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the status bar color to transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Brightness.dark, // Change to Brightness.light if you want light icons
    ));
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.0),
            ),
            child: GetMaterialApp(
              //
              debugShowCheckedModeBanner: false,
              //
              locale: const Locale('ar'),
              //
              //
              // initialBinding: NavBottomBarBinding(),

              theme: ThemeApp.themeData,
              initialRoute: '/',
              getPages: GetPagesListClass.getPagesClass,
              // home: OnBoardingScreen(),
            ),
          );
        });
  }
}
