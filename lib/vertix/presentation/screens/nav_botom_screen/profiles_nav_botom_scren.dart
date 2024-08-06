import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'profiles_screen/faq_about_scren.dart';
import 'profiles_screen/profile_screen.dart';
import 'profiles_screen/settings_screen.dart';

class ProfileNavBottomScreen extends StatelessWidget {
  ProfileNavBottomScreen({super.key});
  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        resizeToAvoidBottomInset: false,
        body: GetBuilder<NavBottomController>(builder: (_) {
          //
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              //
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1, 0), // Slide from top
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
              //
            },
            child: Container(
              key: ValueKey(_navBottomController.currntindexProfileScrn),
              child: siwthcPages(
                  index: _navBottomController.currntindexProfileScrn),
            ),
          );
        }));
  }

  Widget siwthcPages({required int index}) {
    //

    switch (index) {
      //
      case 0:
        return ProfileScreen();
      //
      case 1:
        return SettingsScreen();
      //
      case 2:
        return FAQaboutScreen();
      //

      default:
        //
        return ProfileScreen();
      //

      // End Switch
    }

    //
  }
}
