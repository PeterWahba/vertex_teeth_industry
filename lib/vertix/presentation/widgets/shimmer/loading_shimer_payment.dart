import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/colors_app.dart';

class LoadingShimmerPaymentEntry extends StatelessWidget {
  const LoadingShimmerPaymentEntry({
    super.key,
    required this.numberIndex,
    required this.greyColorShimmer,
    this.purpleColorShimmer = AppColors.purpleMainHighLightColor,
  });

  final int numberIndex;
  final Color greyColorShimmer;
  final Color purpleColorShimmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17.h),
      color:
          numberIndex % 2 == 0 ? AppColors.whiteItemListOrderBackground : null,
      // height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //

          //
          Shimmer.fromColors(
            baseColor: greyColorShimmer,
            highlightColor: purpleColorShimmer,
            child: Container(
              height: 66.h,
              width: 66.w,
              margin: EdgeInsets.only(right: 22.w),
              padding: EdgeInsets.only(
                  top: 19.h, bottom: 19.4.h, left: 26.w, right: 26.8.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: greyColorShimmer,
              ),
            ),
          ),

          //
          SizedBox(
            width: 23.w,
          ),

          //
          // Column
          //==============================================================
          SizedBox(
            // color: Colors.amber,
            width: 295.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    decoration: BoxDecoration(
                      color: greyColorShimmer,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 17.h,
                    width: 101.w,
                  ),
                ),
                //
                SizedBox(
                  height: 12.h,
                ),
                //
                //
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    decoration: BoxDecoration(
                      color: greyColorShimmer,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 25.h,
                    width: 172.w,
                  ),
                ),
                //
                SizedBox(
                  height: 5.h,
                ),
                //
                //
                Shimmer.fromColors(
                  baseColor: greyColorShimmer,
                  highlightColor: purpleColorShimmer,
                  child: Container(
                    decoration: BoxDecoration(
                      color: greyColorShimmer,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 16.h,
                    width: 90.w,
                  ),
                ),
                //

                //
                SizedBox(
                  height: 5.h,
                ),
                //
                Row(
                  children: [
                    const Spacer(),
                    //
                    //
                    Shimmer.fromColors(
                      baseColor: greyColorShimmer,
                      highlightColor: purpleColorShimmer,
                      child: Container(
                        decoration: BoxDecoration(
                          color: greyColorShimmer,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        height: 16.h,
                        width: 40.w,
                      ),
                    ),
                    //
                  ],
                ),
                //
              ],
            ),
          ),

          SizedBox(
            width: 18.w,
          ),

          // End Children Row Item
        ],
      ),
    );
  }
}
