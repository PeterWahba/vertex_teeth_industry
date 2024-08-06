import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/colors_app.dart';

class LoadingShimmerWidgetClass extends StatelessWidget {
  const LoadingShimmerWidgetClass({
    super.key,
    required this.numberindex,
    required this.greyColorShimmer,
    this.purpleColorShimmer = AppColors.purpleMainHighLightColor,
  });

  final int numberindex;
  final Color greyColorShimmer;
  final Color purpleColorShimmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          numberindex % 2 == 0 ? AppColors.whiteItemListOrderBackground : null,
      height: 100.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              height: 66.h,
              width: 66.w,
              margin: EdgeInsets.only(right: 22.w, top: 13.h),
              padding: EdgeInsets.only(
                  top: 17.h, bottom: 18.h, right: 18.w, left: 17.w),
              decoration: BoxDecoration(
                color: greyColorShimmer,
                shape: BoxShape.circle,
              ),
              // child: SvgPicture.asset(AppImages.boxListOrderScrn),
            ),
          ),

          SizedBox(
            width: 17.w,
          ),

          //
          // Column
          //
          Container(
            margin: EdgeInsets.only(top: 21.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    height: 14.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: greyColorShimmer,
                        borderRadius: BorderRadius.circular(10.r)),
                    // child: buildTextListOrderItem(
                    //   textM: idOrder,
                    //   fontSizeM: 16.0.sp,
                    //   colorM: Colors.black,
                    // ),
                  ),
                ),
                //]
                SizedBox(
                  height: 7.h,
                ),
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    height: 13.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: greyColorShimmer,
                        borderRadius: BorderRadius.circular(10.r)),
                    // child: buildTextListOrderItem(
                    //   textM: 'الاسم: $namePatien',
                    //   fontSizeM: 14.0.sp,
                    //   colorM: Colors.black.withOpacity(0.75),
                    // ),
                  ),
                ),

                //
                //]
                SizedBox(
                  height: 6.h,
                ),
                //
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    width: 70.w,
                    height: 15.h,
                    padding: EdgeInsets.only(
                        top: 7.h, bottom: 8.h, right: 7.w, left: 7.w),
                    decoration: BoxDecoration(
                      color: greyColorShimmer,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    // child: Text(
                    //   stateText,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: TextStyle(
                    //     fontSize: 12.sp,
                    //     fontFamily: AppFonts.almaraiBold,
                    //     color: AppColors.backGroundAndTextWhite,
                    //   ),
                    // ),
                  ),
                )
                //
                // End Children Column
              ],
            ),
          ),

          //
          const Spacer(),
          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              width: 30.w,
              height: 14.h,
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              decoration: BoxDecoration(
                color: greyColorShimmer,
                borderRadius: BorderRadius.circular(10.r),
              ),
              // child: Text(
              //   '$timeOrder m',
              //   overflow: TextOverflow.ellipsis,
              //   style: TextStyle(
              //     fontSize: 12.sp,
              //     fontFamily: AppFonts.almaraiRegular,
              //     color: Colors.black.withOpacity(0.75),
              //   ),
              // ),
            ),
          )

          // End Children Row
        ],
      ),
    );
  }
}
