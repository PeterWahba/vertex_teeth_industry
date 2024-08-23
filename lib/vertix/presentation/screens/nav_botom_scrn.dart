import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/home_nav_scrns/home_screen.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/home_original_nav_scrn.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/list_order_nav_botom_screen.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/payment_entry_nav_botom.dart';

import 'nav_botom_screen/profiles_nav_botom_scren.dart';

class NavBottomScreen extends StatelessWidget {
  NavBottomScreen({super.key});

  //
  final NavBottomController _bottomController = Get.find();
  //
  //  We Can Use Controller to change The page According to what we send
  // So We Have To put All Screen inside this one
  //
  @override
  Widget build(BuildContext context) {
    //
    // final double heightQryM = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      //
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SizedBox(
        // color: Colors.amber,
        // height: heightQryM * 0.075,
        height: 95.h,
        child: GetBuilder<NavBottomController>(builder: (_) {
          return BottomNavigationBar(
              //
              type: BottomNavigationBarType.fixed,
              currentIndex: _bottomController.currentIndex,
              // backgroundColor: Colors.pink,
              elevation: 0.0,
              onTap: (value) {
                //
                _bottomController.newIndexSetter(value);
                //
                if (value == 3) {
                  _bottomController.changeIsHomeScrn(1);
                } else if (value == 2) {
                  //
                  _bottomController.changeIsHomeScrn(0);
                }
                //
              },
              // backgroundColor: Colors.blue,
              // showSelectedLabels: false,
              // showUnselectedLabels: false,
              selectedLabelStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: AppFonts.almaraiRegular,
                  color: AppColors.greyNavBotom),
              unselectedItemColor: AppColors.greyNavBotom,
              //
              selectedItemColor: AppColors.purpleMainColor,
              //
              unselectedLabelStyle: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: AppFonts.almaraiRegular,
                  color: AppColors.purpleMainColor),
              items: [
                //
                buildBotomNavItem(
                  condition: _bottomController.currentIndex == 0,
                  image1: AppImages.profileNavBotomIconPurple,
                  image2: AppImages.profileNavBotomIconGray,
                  labelName: AppStringtext.profileNavBotomScrn,
                ),
                //
                buildBotomNavItem(
                  condition: _bottomController.currentIndex == 1,
                  image1: AppImages.waletNavBotomPurple,
                  image2: AppImages.waletNavBotomGrey,
                  labelName: AppStringtext.waletPaymentNavBotomScrn,
                ),
                //
                buildBotomNavItem(
                  condition: _bottomController.currentIndex == 2,
                  image1: AppImages.listOrderIconPurple,
                  image2: AppImages.listOrderIconGray,
                  labelName: AppStringtext.listOrderNavBotomScrn,
                ),

                //
                buildBotomNavItem(
                    heightM: 27,
                    widthM: 30,
                    condition: _bottomController.currentIndex == 3,
                    image1: AppImages.homePurple,
                    image2: AppImages.homeIconGray,
                    labelName: AppStringtext.homNavBotomScrn),

                // End Item Botom Nav Bar
              ]);
        }),
      ),
      body: GetBuilder<NavBottomController>(builder: (_) {
        return _getPage(
            index: _bottomController.currentIndex, contextNavBotom: context);
      }),
    );
  }

  //
  BottomNavigationBarItem buildBotomNavItem({
    required String image1,
    required String image2,
    required String labelName,
    required bool condition,
    double heightM = 24,
    double widthM = 24,
  }) {
    return BottomNavigationBarItem(
        icon: SizedBox(
          // color: Colors.red,
          // height: 55.h
          // ,

          child: Container(
              height: heightM.h,
              width: widthM.w,
              margin: EdgeInsets.only(bottom: 6.h),
              child: SvgPicture.asset(condition ? image1 : image2)),
          // ),
        ),
        label: labelName);
  }

  Widget _getPage({required int index, required BuildContext contextNavBotom}) {
    //
    switch (index) {
      //
      case 0:
        return ProfileNavBottomScreen();
      //
      case 1:
        return PaymentEntryNavBottomScreen();
      //
      case 2:
        return ListOrderNavBotomScreen();
      //
      case 3:
        return HomeOriginNavBotomScreen();
      //

      default:
        //
        return HomeScreen();
      //

      // End Switch
    }

    // End Get Page
  }
}
