import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import '../../../../core/theme/colors_app.dart';
import '../../../../core/utils/images_path_class.dart';

class WalletPaymentNavBottomScreen extends StatelessWidget {
  WalletPaymentNavBottomScreen({super.key});
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
                // _navBottomController.changeCurrnentIndexProfileScreen(0);
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
          Container(
            // height: 18.h,
            margin: EdgeInsets.only(right: 22.w),
            alignment: Alignment.centerRight,
            child: Text(
              'اليوم',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: AppFonts.almaraiRegular,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),

          //
          Container(
            // color: Colors.purple,
            height: 11.h,
            // decoration: BoxDecoration(boxShadow: [
            //   BoxShadow(
            //       color: AppColors.backGroundAndTextWhite,
            //       blurRadius: 14,
            //       // spreadRadius: 2,
            //       offset: Offset(0, 11),
            //       blurStyle: BlurStyle.inner)
            // ]),
          ),

          // Container(
          //   height: 700.h,
          //   // color: Colors.amber,

          // )
          Container(
            height: 700.h,
            child: ListView.builder(
              //
              padding: EdgeInsets.only(top: 5.h),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 15,

              itemBuilder: (context, index) {
                //
                return buildItemOfList(numberIndex: index);
              },
            ),
          )

          //
          // End Children ListView
        ],
      ),
    );
  }

  Widget buildItemOfList({
    required int numberIndex,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 17.h),
      color:
          numberIndex % 2 == 0 ? AppColors.whiteItemListOrderBackground : null,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //

          Container(
            height: 66.h,
            width: 66.w,
            margin: EdgeInsets.only(right: 22.w),
            padding: EdgeInsets.only(
                top: 19.h, bottom: 19.4.h, left: 26.w, right: 26.8.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: numberIndex % 2 == 0
                  ? AppColors.skyColor
                  : AppColors.lightRed,
            ),
            child: SvgPicture.asset(AppImages.dollarIconWalletPaymentScrn),
          ),

          //
          SizedBox(
            width: 23.w,
          ),

          //
          // Column
          //==============================================================
          Container(
            // color: Colors.amber,
            width: 182.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Text(
                  'وليد خالد خليفه',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiBold,
                    color: Colors.black,
                  ),
                ),
                //
                SizedBox(
                  height: 12.h,
                ),
                //
                //
                Text(
                  'ID: ORD-KR-04-24-00021',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black,
                  ),
                ),
                //
                SizedBox(
                  height: 5.h,
                ),
                //
                //
                Text(
                  '2024 / 05 / 30',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black,
                  ),
                ),
                //
                //
              ],
            ),
          ),

          SizedBox(
            width: 18.w,
          ),

          // Column  Money && State Money
          //
          SizedBox(
            width: 108.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //

                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Text(
                    '150000 \$',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: Colors.black),
                  ),
                ),

                SizedBox(
                  height: 9.h,
                ),

                //
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
                  decoration: BoxDecoration(
                    color: numberIndex % 2 == 0
                        ? AppColors.skyColor
                        : AppColors.lightRed,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Text(
                    numberIndex % 2 == 0 ? 'تم الدفع' : 'عند الاستلام',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.backGroundAndTextWhite),
                  ),
                )
                // End Money
              ],
            ),
          )
          // End Children Row Item
        ],
      ),
    );
  }
}
