import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/colors_app.dart';

class LoadingDetailsOrderVertexItemScreen extends StatelessWidget {
  const LoadingDetailsOrderVertexItemScreen({
    super.key,
    required this.greyColorShimmer,
    this.purpleColorShimmer = AppColors.purpleMainHighLightColor,
    this.heightAllContainer = 48,
    this.borderRadiedAll = 8,
  });

  //
  final Color greyColorShimmer;
  final Color purpleColorShimmer;
  final double heightAllContainer;
  final double borderRadiedAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: true,
      children: [
        //
        SizedBox(
          height: 40.h,
        ),
        //
        //
        buildFieldContainerShimmer(),

        SizedBox(
          height: 20.h,
        ),

        //
        buildRowFieldsShimmer(),
        //
        SizedBox(
          height: 20.h,
        ),
        //
        buildFieldContainerShimmer(),

        SizedBox(
          height: 20.h,
        ),

        //
        buildRowFieldsShimmer(),
      ],
    );
  }

  buildFieldContainerShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //

        Shimmer.fromColors(
          baseColor: greyColorShimmer,
          highlightColor: purpleColorShimmer,
          child: Container(
            height: 25.h,
            width: 100,
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadiedAll.r),
              color: greyColorShimmer,
            ),
          ),
        ),
        //
        SizedBox(
          height: 15.h,
        ),
        Shimmer.fromColors(
          baseColor: greyColorShimmer,
          highlightColor: purpleColorShimmer,
          child: Container(
            height: heightAllContainer.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadiedAll.r),
              color: greyColorShimmer,
            ),
          ),
        ),
      ],
    );
  }

  buildRowFieldsShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Shimmer.fromColors(
                baseColor: greyColorShimmer,
                highlightColor: purpleColorShimmer,
                child: Container(
                  height: 25.h,
                  width: 100,
                  // margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadiedAll.r),
                    color: greyColorShimmer,
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),

              //
              Shimmer.fromColors(
                baseColor: greyColorShimmer,
                highlightColor: purpleColorShimmer,
                child: Container(
                  height: heightAllContainer.h,
                  width: 173.w,
                  // margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                    color: greyColorShimmer,
                    borderRadius: BorderRadius.circular(borderRadiedAll.r),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            width: 19.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              //
              Shimmer.fromColors(
                baseColor: greyColorShimmer,
                highlightColor: purpleColorShimmer,
                child: Container(
                  height: 25.h,
                  width: 100,
                  // margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadiedAll.r),
                    color: greyColorShimmer,
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              //
              Shimmer.fromColors(
                baseColor: greyColorShimmer,
                highlightColor: purpleColorShimmer,
                child: Container(
                  height: heightAllContainer.h,
                  width: 173.w,
                  // margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                    color: greyColorShimmer,
                    borderRadius: BorderRadius.circular(borderRadiedAll.r),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
