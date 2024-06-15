import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/colors_app.dart';

class LoadingFAQQuestionShimmerClass extends StatelessWidget {
  const LoadingFAQQuestionShimmerClass({
    super.key,
    required this.numberIndex,
    required this.greyColorShimmer,
    this.purpleColorShimmer = AppColors.purpleMainHighLightColor,
  });

  //
  final int numberIndex;
  final Color greyColorShimmer;
  final Color purpleColorShimmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.h,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      color:
          numberIndex % 2 == 0 ? AppColors.whiteItemListOrderBackground : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              height: 13.h,
              width: 80.w,
              decoration: BoxDecoration(
                color: greyColorShimmer,
                borderRadius: BorderRadius.circular(5.r),
              ),
              margin: EdgeInsets.only(right: 39.w, left: 22.w),
            ),
          ),

          //
          SizedBox(
            height: 10.h,
          ),
          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              height: 13.h,
              width: numberIndex % 2 == 0 ? 130.w : 210.w,
              decoration: BoxDecoration(
                color: greyColorShimmer,
                borderRadius: BorderRadius.circular(5.r),
              ),
              margin: EdgeInsets.only(right: 39.w, left: 22.w),
            ),
          ),

          //
          //
          SizedBox(
            height: 10.h,
          ),
          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              height: 13.h,
              width: 180.w,
              decoration: BoxDecoration(
                color: greyColorShimmer,
                borderRadius: BorderRadius.circular(5.r),
              ),
              margin: EdgeInsets.only(right: 39.w, left: 22.w),
            ),
          ),

          //
          // End Children
        ],
      ),
    );
  }
}
