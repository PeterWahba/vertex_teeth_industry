import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertix/core/pages/pages_name.dart';
import 'package:vertix/core/theme/colors_app.dart';
import 'package:vertix/core/utils/fonts_path_class.dart';
import 'package:vertix/core/utils/images_path_class.dart';
import 'package:vertix/core/utils/text_string_app.dart';
import 'package:vertix/vertix/presentation/controller/register_contrlr/register_controller.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../core/animation/dots_loading.dart';
import '../widgets/custom_textfield_outline.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  //
  final RegisterController _registerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _registerController.formRegister,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            //

            // 71
            // Spacing
            // ----------------------------
            SizedBox(
              height: 71.h,
            ),

            // =======================

            //
            Container(
              height: 41.h,
              width: 41.w,
              margin: EdgeInsets.only(right: 365.w, left: 22.w),
              decoration: BoxDecoration(
                color: AppColors.purpleMainColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: IconButton(
                splashRadius: 35.r,
                color: AppColors.purpleMainColor,
                padding: EdgeInsets.zero,
                onPressed: () {
                  //
                  // Back
                  Get.back();

                  //
                },
                icon: SizedBox(
                  height: 23.h,
                  width: 23.w,
                  child: SvgPicture.asset(AppImages.backArrow),
                ),
              ),
            ),

            // 33
            // Spacing
            // ----------------------------
            SizedBox(
              height: 33.h,
            ),

            //  Text
            // ===================================================================

            Container(
              height: 104.h,
              width: 384.w,
              // color: Colors.amber,
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              child: Text.rich(
                  textAlign: TextAlign.right,
                  TextSpan(
                      style: TextStyle(
                        letterSpacing: -1,
                        wordSpacing: 2,
                        fontSize: 40.sp,
                        height: 1.1,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.textblackLight,
                      ),
                      children: const [
                        TextSpan(text: 'مرحبًا '),
                        TextSpan(
                            text: 'بعودتك ',
                            style: TextStyle(color: AppColors.purpleMainColor)),
                        TextSpan(text: 'سعيدين لرؤيتك مرة أخرى'),
                        // End Children Text
                      ])),
            ),

            // 38
            // Spacing
            // ----------------------------
            SizedBox(
              height: 38.h,
            ),

            // TextField Email
            // =============================
            Container(
              // height: 56.h,
              width: 384.w,
              margin: EdgeInsets.only(right: 22.w, left: 22.w),
              //
              child: GetBuilder<RegisterController>(builder: (_) {
                //
                return CustomTextfieldOutLineProduct(
                  hintText: AppStringtext.emailTextHintRegister,
                  showPrefix: false,
                  showSuffix: false,
                  maxLines: 1,
                  isReadOnly: _registerController.status.isLoading ? "" : null,
                  fontFamilyC: AppFonts.almaraiBold,
                  keyboardType: TextInputType.emailAddress,
                  textFieldControlr: _registerController.emailTextController,
                  validatorCustom: (value) {
                    //
                    if (value == null || value.isEmpty) {
                      //
                      return 'هذا الحقل المطلوب';
                      //
                    } else {
                      //
                      return null;
                    }

                    // End Validator
                  },
                );
              }),
            ),

            // 18
            // Spacing
            // ----------------------------
            SizedBox(
              height: 18.h,
            ),

            // TextField
            // =============================
            Container(
              // height: 56.h,
              width: 384.w,
              margin: EdgeInsets.only(right: 22.w, left: 22.w),
              child: GetBuilder<RegisterController>(builder: (_) {
                return CustomTextfieldOutLineProduct(
                  hintText: AppStringtext.passwordTextHintRegister,
                  showPrefix: false,
                  showSuffix: true,
                  maxLines: 1,
                  isReadOnly: _registerController.status.isLoading ? '' : null,
                  fontFamilyC: AppFonts.almaraiBold,
                  showPassWordText: _registerController.showPassword,
                  keyboardType: TextInputType.visiblePassword,
                  sufixSVG: _registerController.showPassword
                      ? AppImages.eyeClosedPurple
                      : AppImages.eyeOpenPurple,

                  functionSuffixIcon: () {
                    //
                    _registerController.changeShowPassword();
                    //
                  },

                  //
                  textFieldControlr: _registerController.passwordTextController,
                  //
                  validatorCustom: (value) {
                    //
                    if (value == null || value.isEmpty) {
                      //
                      return 'هذا الحقل المطلوب';
                      //
                    } else {
                      //
                      return null;
                    }

                    // End Validator
                  },

                  // hieghtTextField: 56.h,
                );
              }),
            ),

            // 26
            // Spacing
            // ----------------------------
            SizedBox(
              height: 26.h,
            ),

            //
            Container(
              height: 16.h,
              width: 121.w,
              margin: EdgeInsets.only(left: 22.w, right: 285.w),
              child: Text(
                'نسيت كلمة المرور  ؟',
                style: TextStyle(
                  fontFamily: AppFonts.almaraiBold,
                  color: AppColors.purpleMainColor,
                  fontSize: 14.sp,
                ),
              ),
            ),

            // 38
            // Spacing
            // ----------------------------
            SizedBox(
              height: 38.h,
            ),

            //

            // ==============================
            // Show Error Message
            //
            GetBuilder<RegisterController>(
              builder: (context) {
                return Container(
                  // color: Colors.amber,
                  // height: _registerController.status.isError ? 60.h : 0.h,
                  margin: EdgeInsets.only(
                      bottom: _registerController.status.isError ? 25.h : 0.h),
                  child: Center(
                    child: AnimatedCrossFade(
                      firstChild: Text(
                        _registerController.status.errorMessage ?? '',
                        style: TextStyle(
                          fontFamily: AppFonts.almaraiBold,
                          color: AppColors.redCancel,
                          fontSize: 16.sp,
                        ),
                      ),
                      secondChild: Container(),
                      duration: const Duration(milliseconds: 200),
                      crossFadeState: _registerController.status.isError
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                    ),
                  ),
                );
              },
            ),

            //
            GetBuilder<RegisterController>(builder: (_) {
              return ZoomTapAnimation(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: _registerController.status.isLoading
                      ? () {
                          // if Loading do nothing
                          //
                        }
                      : () async {
                          //

                          final check =
                              _registerController.formRegister.currentState;

                          //
                          if (check != null) {
                            if (check.validate()) {
                              //
                              //
                              FocusScope.of(context).unfocus();
                              //

                              //
                              buildDialogPrivacyMethod();
                              // await _registerController.registerLogInUser();
                              //

                              //
                            }

                            // End Not Null
                          }

                          // End onTap
                        },

                  //
                  child: Container(
                    height: 56.h,
                    width: 384.w,
                    margin: EdgeInsets.only(left: 22.w, right: 22.w),
                    decoration: BoxDecoration(
                      color: AppColors.purpleMainColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: _registerController.status.isLoading
                          ? const StaggeredDotsWaveAnimation(
                              color: AppColors.backGroundAndTextWhite,
                              size: 30,
                            )
                          : Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                fontFamily: AppFonts.almaraiBold,
                                color: AppColors.backGroundAndTextWhite,
                                fontSize: 20.sp,
                              ),
                            ),
                    ),
                  ),
                ),
              );
            }),

            // End Children Column
          ],
        ),
      ),
    );
  }

  void buildDialogPrivacyMethod() {
    //
    //
    Get.defaultDialog(
        //
        title: '',
        content: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              ZoomTapAnimation(
                child: InkWell(
                  //
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  //
                  onTap: () {
                    //

                    Get.toNamed(AllPagesName.privacyPolicyScrn);
                    //
                  },
                  //
                  child: Text.rich(
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.textblackLight,
                      height: 1.5,
                    ),
                    const TextSpan(
                      children: [
                        TextSpan(text: 'في حالة الضغط على '),
                        TextSpan(
                          text: ' موافق ',
                          style: TextStyle(color: AppColors.purpleMainColor),
                        ),
                        TextSpan(text: ' فإنك تقر بقرائتك '),
                        TextSpan(
                          text: ' لشروط الاستخدام و سياسة الخصوصية',
                          style: TextStyle(color: AppColors.purpleMainColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //
              SizedBox(
                height: 20.h,
              ),

              //
              GetBuilder<RegisterController>(
                  //
                  builder: (_) {
                return InkWell(
                  borderRadius: BorderRadius.circular(12.r),
                  onTap: _registerController.status.isLoading
                      ? () {}
                      : () async {
                          //
                          await _registerController.registerLogInUser();

                          //
                          if (_registerController.status.isSuccess) {
                            //
                            // if State is success go to homeScrn
                            if (_registerController.status.isSuccess) {
                              Get.toNamed(AllPagesName.navBotomScrn);
                              //
                            }

                            //
                            //
                            //
                            /*
                                                                                             Get.toNamed(
                                                                                                AllPagesName.homeScrn,
                                                                                                arguments: [
                                                                                                  _logInController.userName,
                                                                                                  _logInController.userSid,
                                                                                                  _logInController.userAPiSecret,
                                                                                                ],
                                                                                              );
                                                                                            */
                          } else {
                            //
                            Get.back();
                            //
                          }
                          //

                          //
                        },
                  child: Container(
                    height: 56.h,
                    decoration: BoxDecoration(
                      color: AppColors.purpleMainColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: _registerController.status.isLoading
                          ? const StaggeredDotsWaveAnimation(
                              size: 25,
                              color: AppColors.whiteItemListOrderBackground,
                            )
                          : Text(
                              'موافق',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.whiteItemListOrderBackground,
                                  fontFamily: AppFonts.almaraiExtraBold),
                            ),
                    ),
                  ),
                );
              })

              // End Children
            ],
          ),
        )
        //
        );
    //

    // end method Dialog Privacy
  }
}
