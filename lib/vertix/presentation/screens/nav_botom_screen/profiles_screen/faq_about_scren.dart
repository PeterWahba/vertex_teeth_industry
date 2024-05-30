import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/images_path_class.dart';

class FAQaboutScreen extends StatelessWidget {
  FAQaboutScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 851.h,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          //
          // Spacing
          // ===================================================================
          SizedBox(
            height: 44.h,
          ),

          // Spacing
          // ===================================================================
          SizedBox(
            height: 17.h,
          ),

          //
          Container(
            margin: EdgeInsets.only(right: 365.w, left: 22.w),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                //
                _navBottomController.changeCurrnentIndexProfileScreen(0);
                //
              },
              child: Container(
                height: 41.h,
                width: 41.w,
                padding: EdgeInsets.only(
                    top: 11.h, bottom: 11.h, right: 12.w, left: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.purpleMainColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: SvgPicture.asset(AppImages.backArrow),
              ),
            ),
          ),

          //
          // Spacing
          // ===================================================================
          SizedBox(
            height: 17.h,
          ),

          Container(
            height: 25.h,
            margin: EdgeInsets.only(right: 23.w),
            child: Text(
              AppStringtext.titleFAQScrn,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: AppFonts.almaraiBold,
                  color: Colors.black),
            ),
          ),

          Container(
            height: 697.h,
            // color: Colors.amber,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 17.h),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                //
                return Container(
                  height: 100.h,
                  color: index % 2 == 0
                      ? AppColors.whiteItemListOrderBackground
                      : null,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //
                      Container(
                        margin: EdgeInsets.only(right: 39.w, left: 22.w),
                        child: Text(
                          'كيف يمكنني ازالة المعلومات تتعلق بي',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.87),
                            fontFamily: AppFonts.almaraiBold,
                          ),
                        ),
                      ),

                      //
                      SizedBox(
                        height: 10.h,
                      ),
                      //
                      Container(
                        margin: EdgeInsets.only(right: 39.w, left: 22.w),
                        child: Text(
                          'نموذج افتراضي لعرض معلومات للعميل فقط لهذا الهدف والاختبار وال خهسل سيبخت',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.70),
                            fontFamily: AppFonts.almaraiRegular,
                          ),
                        ),
                      ),

                      //
                      // End Children
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
