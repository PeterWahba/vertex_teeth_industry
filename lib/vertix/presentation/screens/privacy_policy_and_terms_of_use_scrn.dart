import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/theme/colors_app.dart';
import '../../../core/utils/fonts_path_class.dart';
import '../../../core/utils/images_path_class.dart';
import '../../../core/utils/texts/condition_privacy_text.dart';

class PrivacyPolicyAndTermsOfUseScreen extends StatelessWidget {
  const PrivacyPolicyAndTermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final double heightQryM = MediaQuery.of(context).size.height;
    //
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        // systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Column(
          children: [
            // AppBar
            SizedBox(
              // color: Colors.red,
              height: heightQryM * 0.1,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 60.h, left: 15.w),
                    decoration: BoxDecoration(
                        color: AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(12.r)),
                    // padding: EdgeInsets.only(top: 25.h, right: 5.w, left: 5.w),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.back();
                      },
                      icon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(AppImages.backArrow)),
                    ),
                  ),

                  // Spacer(),
                ],
              ),
            ),

            // Rest Of Body

            SizedBox(
              height: heightQryM * 0.9,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildtText(
                          text: PrivacyPolicyAndTermsOfUseText.headText,
                          fontSizezM: 19,
                          topM: 10,
                          bottomM: 25,
                          fontFamilyM: AppFonts.almaraiBold),

                      //
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText.secureInformation,
                        fontSizezM: 18.sp,
                        fontFamilyM: AppFonts.almaraiExtraBold,
                        colorTextM: AppColors.redCancel,
                      ),
                      buildtText(
                        text:
                            PrivacyPolicyAndTermsOfUseText.subSecureInformation,
                        fontSizezM: 16.sp,
                        fontFamilyM: AppFonts.almaraiBold,
                        topM: 15,
                        bottomM: 20,
                      ),
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText.registerAccount,
                        fontSizezM: 18.sp,
                        colorTextM: AppColors.redCancel,
                        fontFamilyM: AppFonts.almaraiExtraBold,
                      ),
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText
                            .oneSubCreateNewAccountTexr,
                        fontSizezM: 16.sp,
                        bottomM: 25,
                      ),
                      //

                      buildDivider(),

                      //
                      // buildtText(
                      //   text: PrivacyPolicyAndTermsOfUseText
                      //       .twoSubCreateNewAccountTexr,
                      //   fontSizezM: 15.sp,
                      //   topM: 15,
                      // ),
                      // buildtText(
                      //     text: PrivacyPolicyAndTermsOfUseText
                      //         .threeSubCreateNewAccountTexr,
                      //     fontSizezM: 15.sp),
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText
                            .fourSubCreateNewAccountTexr,
                        fontSizezM: 16.sp,
                      ),
                      //
                      //
                      buildtText(
                          text: PrivacyPolicyAndTermsOfUseText
                              .informationPrivacyProtection,
                          fontSizezM: 18.sp,
                          colorTextM: AppColors.redCancel,
                          fontFamilyM: AppFonts.almaraiExtraBold,
                          topM: 15,
                          bottomM: 15),

                      //
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText
                            .subInformationPrivacyProtection,
                        fontSizezM: 16.sp,
                        bottomM: 15,
                      ),
                      //
                      buildtText(
                          text: PrivacyPolicyAndTermsOfUseText
                              .modificationOfPrivacyPolicy,
                          fontSizezM: 18.sp,
                          colorTextM: AppColors.redCancel,
                          fontFamilyM: AppFonts.almaraiExtraBold,
                          topM: 15,
                          bottomM: 15),

                      //
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText
                            .subModificationOfPrivacyPolicy,
                        fontSizezM: 16.sp,
                        bottomM: 15,
                      ),
                      //
                      buildtText(
                          text: PrivacyPolicyAndTermsOfUseText.conditionOfUse,
                          fontSizezM: 20.sp,
                          fontFamilyM: AppFonts.almaraiExtraBold,
                          topM: 15,
                          bottomM: 15),

                      //
                      buildtText(
                        text: PrivacyPolicyAndTermsOfUseText.subConditionOfUse,
                        fontSizezM: 16.sp,
                        bottomM: 50,
                      ),
                      //
                      buildDivider(),
                    ],
                  ),
                ),
              ),
            )

            // End Children Main Column
          ],
        ),
      ),
    );
  }

  Divider buildDivider() => Divider(
        height: 0,
        color: AppColors.greyBotomSheet.withOpacity(0.2),
      );

  Widget buildtText(
      {required String text,
      double fontSizezM = 15,
      String? fontFamilyM,
      Color? colorTextM = AppColors.textblackLight,
      double topM = 0,
      double bottomM = 15,
      double leftM = 0,
      double rightM = 0}) {
    return Padding(
      padding: EdgeInsets.only(
        top: topM.h,
        bottom: bottomM.h,
        left: leftM.w,
        right: rightM.w,
      ),
      child: Text(
        text,
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: fontSizezM.sp,
          fontFamily: fontFamilyM ?? AppFonts.almaraiBold,
          wordSpacing: 1.4,
          height: 1.8,
          color: colorTextM,
        ),
      ),
    );
  }
}
