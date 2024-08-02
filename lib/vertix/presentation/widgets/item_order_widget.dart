import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/colors_app.dart';
import '../../../core/utils/fonts_path_class.dart';
import '../../../core/utils/images_path_class.dart';
import '../../../core/functions/methods_utls.dart';

class ItemOrderWidgetClass extends StatelessWidget {
  const ItemOrderWidgetClass(
      {super.key,
      required this.numberindex,
      required this.isPaid,
      required this.namePatien,
      required this.colorBox,
      required this.idOrder,
      required this.stateText,
      required this.totalMoney,
      required this.timeOrder,
      required this.colorState});
  //
  final int numberindex;
  final int isPaid;
  final Color colorBox;
  final String stateText;
  final double totalMoney;
  final String namePatien;
  final String idOrder;
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
            // color: Colors.blue,
            margin: EdgeInsets.only(top: 21.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                SizedBox(
                  height: 17.h,
                  child: buildTextListOrderItem(
                    textM: idOrder,
                    fontSizeM: 16.0.sp,
                    colorM: Colors.black,
                  ),
                ),
                //]
                SizedBox(
                  height: 7.h,
                ),
                //
                SizedBox(
                  // color: Colors.amber,
                  height: 16.h,
                  child: buildTextListOrderItem(
                    textM: 'الاسم: $namePatien',
                    widthText: 150.w,
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
          isPaid == 0 ? Container() : const Spacer(),

          isPaid == 0
              ? Container()
              : Column(
                  children: [
                    //
                    const Spacer(),
                    //
                    //
                    Container(
                        height: 24.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          color: AppColors.greenIsPaidColor,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        //
                        child: Center(
                          child: Text(
                            'واصل',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: AppFonts.almaraiBold,
                              color: AppColors.almostWhiteDidntSaveBtn,
                            ),
                          ),
                        )),
                  ],
                ),

          //
          const Spacer(),
          //
          Column(
            children: [
              Container(
                width: 70.w,
                margin: EdgeInsets.only(left: 22.w, top: 22.h),
                child: Text(
                  // timeOrder + " " + '$numberindex' + ' item ',
                  timeOrder,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black.withOpacity(0.75),
                  ),
                ),
              ),

              //
              const Spacer(),

              //
              Container(
                height: 23.68.h,
                width: 74.w,
                margin: EdgeInsets.only(right: 8.w, left: 12.w, bottom: 5.h),
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  color: AppColors.purpleMainColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Center(
                  child: Text(
                    '${MethodsClassUTls.formatNumber(number: totalMoney)} د.ع',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.almostWhiteDidntSaveBtn,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // End Children Row
        ],
      ),
    );
  }

  //
  buildTextListOrderItem({
    required String textM,
    required double fontSizeM,
    double? widthText,
    required Color colorM,
  }) {
    //
    return Container(
      width: widthText,
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
