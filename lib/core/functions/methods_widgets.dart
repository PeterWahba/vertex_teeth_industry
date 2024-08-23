import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';

import '../theme/colors_app.dart';

class MethodsWidgetClass {
  //
  // Snack Bar Message
  // ===========================================================
  static snackBarMessageGetX({
    required String titleSnack,
    required String messageSnack,
    required String messageRow,
    String? iconSVG,
    required Color colorTextTitle,
    Color? colorTextBody,
  }) {
    //
    TextStyle textStyleM = TextStyle(
      height: 1.4,
      wordSpacing: 1.2,
      fontSize: 15.sp,
      fontFamily: AppFonts.almaraiRegular,
      color: colorTextBody,
    );
    //

    Get.snackbar(
      '',
      messageSnack,
      isDismissible: false,
      // snackStyle: SnackStyle.GROUNDED,
      titleText: Text(
        titleSnack,
        style: textStyleM.copyWith(color: colorTextTitle),
      ),

      barBlur: 0.0,

      colorText: colorTextTitle,
      duration: const Duration(milliseconds: 1500),

      backgroundColor: AppColors.whiteItemListOrderBackground,
      // isDismissible: true,
      // barBlur: 5,
      // borderColor: Colors.amber,
      boxShadows: [
        BoxShadow(
          color: AppColors.textblackLight,
          // offset: const Offset(1, 2),
          blurRadius: 1.r,
          // spreadRadius: 3,
          blurStyle: BlurStyle.outer,
        )
      ],
      messageText: Row(
        children: [
          SizedBox(
            // color: Colors.blue,
            width: 225.w,
            child: Text(
              messageRow,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: textStyleM,
            ),
          ),
          const Spacer(),
          iconSVG != null
              ? SizedBox(
                  height: 30.h,
                  width: 30.w,
                  child: SvgPicture.asset(iconSVG),
                )
              : Container(),
        ],
      ),

      snackPosition: SnackPosition.TOP,

      margin: EdgeInsets.only(top: 100.h, right: 40.w, left: 40.w),
    );

    // End Snack Message
  }
  //
  /*
  Pending approval   == في انتظار الموافقة  ==orange'



  Registered and Approved == مسجلة ومعتمدة  == green
  Case finished and Packaging  ===  حالة الانتهاء والتعبئة والتغليف  == blue

  
  Finished Delivered ==  الانتهاء من التسليم  == green

  
  Case Rejected ==   مرفوض  == red



  
  Remake Case  ==  طبعة جديدة  == yellow


  // 

  Cancelled ==  تم الالغاء  == red



  Postponed  ==  تاجيل  == red
  
  Re-Postponed  == إعادة التأجيل  == orange




  In Production  ==  قيد الإنتاج  == blue



  
  Ready for Packaging  ==  جاهز للتغليف  == grey

  On The Way  ==  في الطريق  == blue
  */

  //

  //
  static dialogAskAreYouSure(
      {required String textM,
      required String textDialog,
      required void Function() onTapM,
      Color? colorText}) {
    // return InkWell(
    //   onTap: () {
    //     //
    Get.defaultDialog(
        title: '',
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Text(
                textDialog,
                overflow: TextOverflow.ellipsis,
                maxLines: 8,
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 16.sp,
                  fontFamily: AppFonts.almaraiBold,
                ),
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //
                InkWell(
                  borderRadius: BorderRadius.circular(8.r),
                  onTap: () => Get.back(),
                  child: Container(
                    width: 80.w,
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                        child: Text(
                      'إلغاء',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: AppFonts.almaraiBold,
                        // color: AppColors.whiteMaterialBtn,
                      ),
                    )),
                  ),
                ),

                SizedBox(
                  width: 50.w,
                ),

                //
                InkWell(
                  borderRadius: BorderRadius.circular(8.r),
                  onTap: onTapM,
                  child: Container(
                    width: 80.w,
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.colorRed),
                    child: Center(
                        child: Text(
                      'تأكيد',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.whiteItemListOrderBackground,
                      ),
                    )),
                  ),
                ),
                //
              ],
            )
            //
          ],
        ));
    //
    // },
    //   child: Container(
    //     alignment: Alignment.centerRight,
    //     padding: EdgeInsets.only(right: 20.w),
    //     height: 56.h,
    //     width: double.infinity,
    //     child: Text(
    //       textM,
    //       style: TextStyle(
    //         fontSize: 16.sp,
    //         color: colorText,
    //         fontFamily: AppFonts.almaraiRegular,
    //       ),
    //     ),
    //   ),
    // );
  }
  //

  static Color colorBorderOrderState(String stateorder) {
    //
    switch (stateorder) {
      //
      case 'تم الموافقة':
        return const Color.fromARGB(255, 7, 167, 148);

      //
      case 'معلق الطلب':
        return const Color.fromARGB(255, 237, 10, 10);

      //
      case 'تم الالغاء':
        return const Color.fromARGB(255, 55, 2, 2);

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
