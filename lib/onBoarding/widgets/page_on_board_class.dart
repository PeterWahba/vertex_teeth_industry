import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/colors_app.dart';
import '../../core/utils/fonts_path_class.dart';
import '../../core/utils/text_string_app.dart';

class PageOnBoardClass extends StatelessWidget {
  const PageOnBoardClass({
    super.key,
    required this.imageSvg,
    required this.showFirstSpecial,
    required this.showFirstWord,
    required this.heightimage,
    required this.widthimage,
    required this.textFirstBlack,
    required this.spaceImageAndText,
    required this.spaceFromAbove,
    required this.marginImageLeft,
    required this.marginImageRight,
  });

  final String imageSvg;
  final String textFirstBlack;
  final bool showFirstSpecial;
  final bool showFirstWord;
  final double heightimage;
  final double widthimage;
  final double spaceImageAndText;
  final double spaceFromAbove;
  final double marginImageLeft;
  final double marginImageRight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Container(
          // color: Colors.orange,
          height: spaceFromAbove,
        ),
        //
        Center(
          child: Container(
            margin: EdgeInsets.only(
              left: marginImageLeft,
              right: marginImageRight,
            ),
            // color: Colors.purple,
            width: widthimage,
            height: heightimage,
            child: SvgPicture.asset(imageSvg),
          ),
        ),

        // 87.46
        // Spacing
        // ----------------------------
        Container(
          // color: Colors.amber,
          height: spaceImageAndText,
        ),

        // Text
        // ----------------------------
        Container(
          // color: Colors.pink,
          margin: EdgeInsets.only(right: 44.w, left: 52.w),
          // padding: EdgeInsets.symmetric(horizontal: 0.w),
          height: 75.h,
          width: 332,
          child: Center(
            child: Text.rich(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              TextSpan(
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 20.sp,
                  height: 1.3,
                  fontFamily: AppFonts.almaraiBold,
                  color: AppColors.textblackLight,
                ),
                children: [
                  //
                  TextSpan(text: showFirstWord ? 'خليك ' : ''),
                  //
                  TextSpan(
                    text: showFirstSpecial ? 'متميز ' : '',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.purpleMainColor,
                    ),
                  ),

                  TextSpan(text: textFirstBlack),
                  //

                  //
                  TextSpan(
                    text: AppStringtext.special,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.purpleMainColor,
                    ),
                  ),

                  //  End Children TextSpan
                ],
              ),
            ),
          ),
        ),

        // End Childere
      ],
    );
  }
}
