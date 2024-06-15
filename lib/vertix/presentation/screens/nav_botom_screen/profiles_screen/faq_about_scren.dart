import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/profile_usr_controlr.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../widgets/error_state.dart';
import '../../../widgets/shimmer/loading_faq_question.dart';

class FAQaboutScreen extends StatelessWidget {
  FAQaboutScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();
  //
  final ProfileUsrController _profileUsrController = Get.find();

  @override
  Widget build(BuildContext context) {
    return
        // SafeArea(
        // child:
        SizedBox(
      // color: Colors.red,
      height: 831.h,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          //
          // Spacing
          // ===================================================================
          // SizedBox(
          //   height: 20.h,
          // ),

          // // Spacing
          // // ===================================================================
          // SizedBox(
          //     // height: 17.h,
          //     ),
          Container(
            height: 30.h,
            // width: 50,
            // color: Colors.amber,
          ),

          //
          Container(
            height: 20.h,
            // width: 50,
            // color: Colors.red,
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

          //  Build List FAQ Question
          Container(
            height: 698.h,
            // color: Colors.amber,
            padding: EdgeInsets.only(top: 17.h),
            child:
                //
                _profileUsrController.obx((state) => buildMainWidgetFAQ(),

                    // onErroe
                    // ==============
                    onError: (error) => Center(
                          child: ErrorStateWidgetClass(
                            errorText: error!,
                            fontSizeError: 20.sp,
                            colorTexterror: AppColors.redCancel,
                            onTapInkWell: () {
                              //
                              _profileUsrController.onInit();
                              //
                            },
                          ),
                        ),

                    // onLoading
                    // ========
                    onLoading: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (_, index) {
                          return LoadingFAQQuestionShimmerClass(
                            greyColorShimmer: AppColors.greyShimmer,
                            numberIndex: index,
                          );
                        })),
            //

            //
            //  ListView.builder(

            //   shrinkWrap: true,
            //   physics: BouncingScrollPhysics(),
            //   itemCount: 15,
            //   itemBuilder: (context, index) {
            //     //

            //   },
            // ),
          )
        ],
      ),
    );
    // );
  }

  buildMainWidgetFAQ() {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        //
        SliverList.builder(
          //

          //
          itemCount: _profileUsrController.listFAQquestion.length,
          //
          itemBuilder: (context, index) {
            //
            final itemFAQ = _profileUsrController.listFAQquestion[index];
            //

            return Container(
              // height: 100.h,
              padding: EdgeInsets.symmetric(vertical: 10.h),
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
                      // 'كيف يمكنني ازالة المعلومات تتعلق بي',
                      itemFAQ.question,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 20,
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
                      // 'نموذج افتراضي لعرض معلومات للعميل فقط لهذا الهدف والاختبار وال خهسل سيبخت',
                      itemFAQ.answer,
                      overflow: TextOverflow.ellipsis,

                      maxLines: 40,
                      style: TextStyle(
                        wordSpacing: 2.5,
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
      ],
    );

    // end Main Widget
  }
}
