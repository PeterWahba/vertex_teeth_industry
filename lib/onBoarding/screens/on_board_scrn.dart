import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vertex_teeth_industry/core/pages/pages_name.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/onBoarding/controller/on_board_controllr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../core/widgets/material_btn_class.dart';
import '../widgets/page_on_board_class.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({super.key});

  //
  final OnBoardController _onBoardController = Get.put(OnBoardController());

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      //
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        //
        children: [
          //

          // 44
          // Spacing
          // ----------------------------
          SizedBox(
            height: 44.h,
          ),

          // 37
          // Spacing
          // ----------------------------
          SizedBox(
            height: 33.h,
          ),

          // 37
          // Text Skip Btn
          // ----------------------------
          ZoomTapAnimation(
            child: Container(
              margin: EdgeInsets.only(right: 34.w),
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  //
                  // Move To Register Scren
                  Get.toNamed(AllPagesName.registerScrn);
                  //
                },
                child: SizedBox(
                  height: 30.h,
                  width: 50.w,
                  child: Text(
                    AppStringtext.skip,
                    overflow: TextOverflow.ellipsis,
                    style: buildTextStyle(),
                  ),
                ),
              ),
            ),
          ),

          // 81
          //  5 cuted for Skip Btn
          // Spacing
          // ----------------------------

          Container(
            // color: Colors.amber,
            height: 536.h,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: PageView(
                //

                //
                physics: const BouncingScrollPhysics(),
                //
                controller: _onBoardController.indicatorController,
                //
                onPageChanged: (value) {
                  //
                  // Move To Register Page
                  //
                },
                //
                children: [
                  //
                  PageOnBoardClass(
                    heightimage: 297.54.h,
                    widthimage: 297.49.w,
                    spaceImageAndText: 87.46.h,
                    spaceFromAbove: 76.h,
                    marginImageLeft: 65.w,
                    marginImageRight: 65.51.w,
                    imageSvg: AppImages.onBoardImageOne,
                    showFirstSpecial: true,
                    showFirstWord: true,
                    textFirstBlack: 'ورتب عملك وبالترتيب وخليك طبيب  ',
                  ),

                  //
                  PageOnBoardClass(
                    widthimage: 242.22.w,
                    //
                    heightimage: 258.21.h,
                    spaceImageAndText: 63.h,
                    spaceFromAbove: 139.79.h,
                    marginImageLeft: 93.w,
                    marginImageRight: 92.78.w,
                    imageSvg: AppImages.onBoardImageTwo,
                    showFirstSpecial: false,
                    showFirstWord: false,
                    textFirstBlack:
                        'تابع طلبات ومواعيد المراجعين وخليك على الوقت حتى تكون ',
                  ),

                  //
                  PageOnBoardClass(
                    //
                    //
                    //
                    widthimage: 197.89.w,

                    //
                    heightimage: 188.51.h,
                    spaceFromAbove: 167.h,
                    spaceImageAndText: 105.49.h,

                    //
                    marginImageLeft: 130.w,
                    marginImageRight: 100.11.w,

                    imageSvg: AppImages.onBoardImageThree,
                    showFirstSpecial: true,
                    showFirstWord: true,
                    textFirstBlack: 'ورتب عملك وبالترتيب وخليك طبيب  ',
                  ),

                  //
                  // End Children
                ],
              ),
            ),
          ),

          // 55
          // Spacing
          // ----------------------------
          SizedBox(
            height: 55.h,
          ),

          // Indicator Dot
          // ============================
          Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                // color: Colors.amber,
                height: 12.h,
                width: 76.w,
                child: GetBuilder<OnBoardController>(builder: (context) {
                  return SmoothPageIndicator(
                    controller: _onBoardController
                        .indicatorController, // PageController
                    count: 3,

                    axisDirection: Axis.horizontal,
                    effect: WormEffect(
                      dotHeight: 12.h,
                      dotWidth: 12.w,
                      spacing: 16,
                      dotColor: AppColors.greyindicator,
                    ),

                    // your preferred effect
                    onDotClicked: (index) {
                      // _boardController.onDotClicked(index);
                    },
                  );
                }),
              ),
            ),
          ),

          // 79
          // Spacing
          // ----------------------------
          SizedBox(
            height: 79.h,
          ),

          //
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            child: MaterialBtnClass(
              colorBtn: AppColors.purpleMainColor,
              colorBtnHighLight: AppColors.purpleMainHighLightColor,
              colorBtnText: AppColors.backGroundAndTextWhite,
              fontFamilyText: AppFonts.almaraiBold,
              fontSizeText: 20.sp,
              heightBtn: 56.h,
              radiusBtn: 8.r,
              textBtn: 'Next',
              widthBtn: 384.w,
              onPressedM: () {
                //
                if (_onBoardController.indicatorController.page != 2) {
                  _onBoardController.indicatorController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                  );
                }

                if (_onBoardController.indicatorController.page == 2) {
                  //
                  // Move To Register Scren
                  Get.toNamed(AllPagesName.registerScrn);
                }

                //
              },
            ),
          )

          // InkWell(
          //   borderRadius: BorderRadius.circular(8.r),
          //   onTap: () {},
          //   child: Container(
          //     width: 384.w,
          //     height: 56.h,
          //     decoration: BoxDecoration(
          //       color: AppColors.purpleMainColor,
          //       borderRadius: BorderRadius.circular(8.r),
          //     ),
          //     child: Center(
          //         child: Text(
          //       'Next',
          //       style: buildTextStyle(
          //         colorText: AppColors.backGroundAndTextWhite,
          //         fontSizeText: 20,
          //       ),
          //     )),
          //   ),
          // ),

          // ==========================
          // End Children List View
        ],
      ),
    );
  }

  TextStyle buildTextStyle({
    Color colorText = Colors.black,
    double fontSizeText = 16,
    double heightText = 0,
    String fontFamilyText = AppFonts.almaraiBold,
  }) {
    //
    return TextStyle(
      color: colorText,
      fontSize: fontSizeText.sp,
      fontFamily: fontFamilyText,
      wordSpacing: 2,
      height: heightText,
    );

    // End Method TextStyle
  }
}
