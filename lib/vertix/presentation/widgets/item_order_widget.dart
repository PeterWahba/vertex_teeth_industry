import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/colors_app.dart';
import '../../../core/utils/fonts_path_class.dart';
import '../../../core/utils/images_path_class.dart';

class ItemOrderWidgetClass extends StatelessWidget {
  const ItemOrderWidgetClass(
      {super.key,
      required this.numberindex,
      required this.colorBox,
      required this.stateText,
      required this.timeOrder,
      required this.colorState});
  //
  final int numberindex;
  final Color colorBox;
  final String stateText;
  final String timeOrder;
  final Color colorState;
  //
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
          Container(
            height: 66.h,
            width: 66.w,
            margin: EdgeInsets.only(right: 22.w, top: 13.h),
            padding: EdgeInsets.only(
                top: 17.h, bottom: 18.h, right: 18.w, left: 17.w),
            decoration: BoxDecoration(
              color: colorBox,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(AppImages.boxListOrderScrn),
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
                Container(
                  height: 17.h,
                  child: buildTextListOrderItem(
                    textM: 'ID: ORD-KR-04-24-00021',
                    fontSizeM: 16.0.sp,
                    colorM: Colors.black,
                  ),
                ),
                //]
                SizedBox(
                  height: 7.h,
                ),
                //
                Container(
                  height: 16.h,
                  child: buildTextListOrderItem(
                    textM: 'الاسم: وليد خالد خليفة',
                    fontSizeM: 14.0.sp,
                    colorM: Colors.black.withOpacity(0.75),
                  ),
                ),

                //
                //]
                SizedBox(
                  height: 6.h,
                ),
                //
                //
                Container(
                  padding: EdgeInsets.only(
                      top: 7.h, bottom: 8.h, right: 7.w, left: 7.w),
                  decoration: BoxDecoration(
                    color: colorState,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Text(
                    stateText,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.backGroundAndTextWhite,
                    ),
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
          Container(
            margin: EdgeInsets.only(left: 22.w, top: 22.h),
            child: Text(
              '$timeOrder m',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: AppFonts.almaraiRegular,
                color: Colors.black.withOpacity(0.75),
              ),
            ),
          )

          // End Children Row
        ],
      ),
    );
  }

  //
  buildTextListOrderItem(
      {required String textM,
      required double fontSizeM,
      required Color colorM}) {
    //
    return Container(
      margin: EdgeInsets.only(right: 6.w),
      child: Text(
        textM,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: fontSizeM,
          color: colorM,
          fontFamily: AppFonts.almaraiRegular,
        ),
      ),
    );
    // End Method Text
  }
}
