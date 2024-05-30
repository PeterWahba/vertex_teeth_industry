import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../widgets/custom_textfield_outline.dart';

class CreateNewRequestScreenOri extends StatelessWidget {
  CreateNewRequestScreenOri({super.key});
  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: false,
      //
      body: SizedBox(
        height: 851.h,
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            //
            //
            Container(
              height: 44.h,
              // width: 50,
              // color: Colors.amber,
            ),

            //
            Container(
              height: 17.h,
              // width: 50,
              // color: Colors.red,
            ),

            //
            Container(
              height: 41.h,
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              // width: 50,
              // color: Colors.pink,
              child: Row(
                children: [
                  //

                  ZoomTapAnimation(
                    child: InkWell(
                      //
                      onTap: () {
                        //
                        // _listOrderNavBottomController.controllerPage.animateTo(   , duration: Duration(microseconds: 200), curve: Curves.linear);
                        // _listOrderNavBottomController.controllerPage
                        //     .animateToPage(2,
                        //         duration: Duration(milliseconds: 200),
                        //         curve: Curves.linear);
                        //
                        // _listOrderNavBottomController.controllerPage.jumpTo(1);
                        _navBottomController
                            .changeCurrnentIndexListOrderScreen(1);
                        //
                      },
                      //
                      child: Container(
                        height: 41.h,
                        width: 71.w,
                        decoration: BoxDecoration(
                          color: AppColors.purpleMainColor,
                          borderRadius: BorderRadius.circular(8.r),
                          //
                        ),
                        child: Center(
                          child: SizedBox(
                              width: 32.w,
                              height: 16.h,
                              child: Text(
                                AppStringtext.saveAddOrderPahseOneScrn,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.almaraiBold,
                                  color: AppColors.backGroundAndTextWhite,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                  //
                  const Spacer(),
                  //

                  ZoomTapAnimation(
                    child: InkWell(
                      //
                      //
                      onTap: () {
                        //
                        _navBottomController
                            .changeCurrnentIndexListOrderScreen(0);
                        //
                      },
                      //
                      //
                      child: Container(
                        height: 41.h,
                        width: 41.w,
                        padding: EdgeInsets.only(
                            top: 11.h, bottom: 11.h, left: 10.w, right: 12.w),
                        decoration: BoxDecoration(
                            color: AppColors.purpleMainColor,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: SvgPicture.asset(AppImages.backArrow),
                      ),
                    ),
                  )
                  // End Children Row
                ],
              ),
            ),

            //
            // Spacing
            // ========================
            SizedBox(
              height: 24.h,
            ),

            // Texts
            //
            Container(
              margin: EdgeInsets.only(right: 22.w),
              height: 24.h,
              child: Row(
                children: [
                  //

                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: AppFonts.almaraiBold,
                            color: AppColors.greyCreateNewRequesText),
                        children: const [
                          //
                          TextSpan(
                            text: AppStringtext
                                .crateNewRequestPartOneAddOrderPahseOneScrn,
                          ),

                          TextSpan(
                              text: AppStringtext
                                  .crateNewRequestPartTwoAddOrderPahseOneScrn,
                              style:
                                  TextStyle(color: AppColors.purpleMainColor)),

                          TextSpan(
                            text: AppStringtext
                                .crateNewRequestPartThreeAddOrderPahseOneScrn,
                          ),

                          //
                        ]),
                  ),

                  SizedBox(
                    width: 10.w,
                  ),

                  //

                  Container(
                    height: 24.h,
                    padding: EdgeInsets.only(left: 7.w, right: 7.w),
                    decoration: BoxDecoration(
                      color: AppColors.almostWhiteDidntSaveBtn,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Center(
                      child: Text(
                        AppStringtext.didntSaveAddOrderPahseOneScrn,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: AppFonts.almaraiBold,
                            color: AppColors.redCancel),
                      ),
                    ),
                  ),

                  //

                  // End Children Row Texts
                ],
              ),
            ),

            //
            //
            //
            // Spacing
            // ========================
            SizedBox(
              height: 37.h,
            ),

            // Fields
            // ==============================================================

            //
            buildTextAndFieldTextFormField(
                titleField: AppStringtext.patientNameAddOrderPahseOneScrn),

            //
            buildTextAndFieldTextFormField(
                titleField: AppStringtext.dateAddOrderPahseOneScrn),

            //
            buildTextAndFieldTextFormField(
                titleField: AppStringtext.genderAddOrderPahseOneScrn),

            //
            buildTextAndFieldTextFormField(
                titleField: AppStringtext.ageAddOrderPahseOneScrn,
                botomPading: 0),

            //

            // Spacing
            // ========================
            SizedBox(
              height: 76.h,
            ),

            //
            // Btn Next
            // ========================
            ZoomTapAnimation(
              child: InkWell(
                //
                onTap: () {
                  //
                  _navBottomController.changeCurrnentIndexListOrderScreen(2);
                  //
                },
                //

                child: Container(
                  height: 56.h,
                  width: 384.w,
                  margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                      color: AppColors.purpleMainColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                    child: Text(
                      AppStringtext.nextBtnAddOrderPahseOneScrn,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.backGroundAndTextWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //
            // Spacing
            // ========================
            Container(
              // color: Colors.amber,
              height: 400.h,
            ),

            //

            // End Children Main Column
          ],
        ),
      ),

      // End Scaffold
    );
  }

  buildTextAndFieldTextFormField(
      {required String titleField, double botomPading = 15}) {
    //
    return Padding(
      padding: EdgeInsets.only(left: 41.w, right: 41.w, bottom: botomPading.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //
          SizedBox(
            height: 20.h,
            child: Text(
              titleField,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: AppFonts.almaraiRegular,
                  color: Colors.black),
            ),
          ),

          //
          SizedBox(
            height: 11.h,
          ),

          //
          SizedBox(
            height: 48.h,
            child: CustomTextfieldOutLineProduct(
              hintText: '',
              showPrefix: false,
              showSuffix: false,
              contentPaddingField: 0,
            ),
          )
          // End Children Column Field
        ],
      ),
    );
    // End Method Text && TExtFormField
  }
}
