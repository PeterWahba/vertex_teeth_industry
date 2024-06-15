import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';

import '../../../core/utils/fonts_path_class.dart';

class ErrorStateWidgetClass extends StatelessWidget {
  const ErrorStateWidgetClass({
    super.key,
    required this.errorText,
    required this.onTapInkWell,
    required this.colorTexterror,
    required this.fontSizeError,
  });

  //
  final String errorText;
  final double fontSizeError;
  final void Function() onTapInkWell;
  final Color colorTexterror;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //
      onTap: onTapInkWell,
      //
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Text(
            errorText,
            style: TextStyle(
              fontSize: fontSizeError,
              color: colorTexterror,
              fontFamily: AppFonts.almaraiBold,
            ),
          ),
          //
          SizedBox(
            height: 10.h,
          ),

          SizedBox(
            height: 35.h,
            width: 35.w,
            child: SvgPicture.asset(AppImages.reloadIcon),
          )

          // end Children
        ],
      ),
    );
  }
}
