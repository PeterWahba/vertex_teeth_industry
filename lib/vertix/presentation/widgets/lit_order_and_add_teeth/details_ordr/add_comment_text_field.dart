import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../custom_textfield_outline.dart';

class AddCommentTextFieldWidgetCustom extends StatelessWidget {
  const AddCommentTextFieldWidgetCustom({
    super.key,
    required this.controllr,
    required this.isLoading,
    required this.onTapInkWell,
  });

  //
  final TextEditingController controllr;
  final bool isLoading;
  final void Function() onTapInkWell;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //
        InkWell(
          //
          onTap: onTapInkWell,
          //
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,

          //
          child: ZoomTapAnimation(
            child: Container(
              margin: EdgeInsets.only(left: 16.w, right: 36.w),
              padding: EdgeInsets.only(
                  top: 18.33.h, bottom: 17.04.h, left: 16.04.w, right: 16.04.w),
              height: 55.h,
              width: 55.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.purpleMainColor,
              ),
              child: isLoading
                  ? const CircularProgressIndicator(
                      color: AppColors.backGroundAndTextWhite,
                      strokeWidth: 3,
                    )
                  : SvgPicture.asset(AppImages.whiteArrowRight),
            ),
          ),
        ),

        SizedBox(
          // padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: 291.w,
          child: CustomTextfieldOutLineProduct(
            hintText: '   كتابة تعليق',
            textFieldControlr: controllr,
            showPrefix: false,
            showSuffix: false,
            minLines: 2,
            bordertextField: 100,
            topPaddingContent: 15.h,
            leftPaddingContent: 35.w,
            rightPaddingContent: 35.w,
            botomPaddingContent: 15.h,
            // hieghtTextField: 56.h,
          ),
        ),
      ],
    );
  }
}
