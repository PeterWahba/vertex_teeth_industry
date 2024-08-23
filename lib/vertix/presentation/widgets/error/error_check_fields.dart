import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_app.dart';
import '../../../../core/utils/fonts_path_class.dart';

class ErrorCheckFieldsWidgetCustom extends StatelessWidget {
  const ErrorCheckFieldsWidgetCustom({super.key, required this.errorCheckmsg});

  final String errorCheckmsg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      // color: Colors.amber,
      margin: EdgeInsets.only(
          bottom: errorCheckmsg != '' ? 25.h : 0.h, left: 20.w, right: 20.w),
      //
      alignment: Alignment.center,
      child:
          //  Center(

          //   child:
          AnimatedCrossFade(
        firstChild: Text(
          errorCheckmsg,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.3,
            fontFamily: AppFonts.almaraiBold,
            color: AppColors.redCancel,
            fontSize: 16.sp,
          ),
        ),
        secondChild: Container(),
        duration: const Duration(milliseconds: 200),
        crossFadeState: errorCheckmsg != ''
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),

      // ),
    );
  }
}
