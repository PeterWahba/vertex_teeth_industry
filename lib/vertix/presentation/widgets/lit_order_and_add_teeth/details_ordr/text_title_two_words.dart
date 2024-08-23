import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';

class TextTitleTwoWordsWidgetCustom extends StatelessWidget {
  const TextTitleTwoWordsWidgetCustom(
      {super.key, required this.firstWord, required this.secondtWord});

  //
  final String firstWord;
  final String secondtWord;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 41.w),
      child: Align(
        alignment: Alignment.centerRight,
        //
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: AppFonts.almaraiBold,
              color: AppColors.greyCreateNewRequesText,
            ),
            children: [
              //
              TextSpan(text: firstWord),
              //
              TextSpan(
                  text: secondtWord,
                  style: const TextStyle(color: AppColors.purpleMainColor)),
            ],
          ),
        ),
      ),
    );
  }
}
