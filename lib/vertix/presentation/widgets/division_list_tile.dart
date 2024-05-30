import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/colors_app.dart';
import '../../../core/utils/fonts_path_class.dart';
import '../../../core/utils/images_path_class.dart';

class DivisionListTileWidgetClass extends StatelessWidget {
  const DivisionListTileWidgetClass(
      {super.key,
      required this.widthIcon,
      required this.marginTop,
      required this.marginRight,
      this.onTapM,
      required this.marginLeft,
      required this.spaceBetweenIconAndTextWidth,
      required this.spaceBetweenDivsionAndDividerHeight,
      required this.iconDivision,
      required this.textDivsion,
      required this.heightIcon});

  //
  final double widthIcon;
  final double marginTop;
  final double marginRight;
  final void Function()? onTapM;
  final double marginLeft;
  final double spaceBetweenIconAndTextWidth;
  final double spaceBetweenDivsionAndDividerHeight;

  final String iconDivision;
  final String textDivsion;
  final double heightIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //
      onTap: onTapM,
      child: Container(
        // height: heightDivision,
        margin: EdgeInsets.only(
            top: marginTop, right: marginRight, left: marginLeft),
        child: Column(
          children: [
            //
            Row(
              children: [
                //
                SizedBox(
                  height: heightIcon,
                  width: widthIcon,
                  child: SvgPicture.asset(iconDivision),
                ),

                //
                // Spacing
                // ================================
                SizedBox(
                  width: spaceBetweenIconAndTextWidth,
                ),
                //

                //
                Text(
                  textDivsion,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black,
                  ),
                ),

                //
                //
                const Spacer(),

                //
                SizedBox(
                    height: 16.2.h,
                    width: 9.04.w,
                    child: SvgPicture.asset(AppImages.arrowLeftProfileScrn))

                // End Childre Row
              ],
            ),

            //
            SizedBox(
              height: spaceBetweenDivsionAndDividerHeight,
            ),

            //
            SizedBox(
              // margin: EdgeInsets.symmetric(horizontal: 22.w),
              width: 384.w,
              child: const Divider(
                height: 0,
                color: AppColors.dividerColor,
              ),
            )

            // End Children Column
          ],
        ),
      ),
    );
  }
}
