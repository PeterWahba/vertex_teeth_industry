import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/colors_app.dart';
import '../../../core/utils/fonts_path_class.dart';
import '../../../core/utils/images_path_class.dart';

class CustomTextfieldOutLineProduct extends StatelessWidget {
  const CustomTextfieldOutLineProduct({
    super.key,
    this.onSavedFunction,
    this.initText,
    this.widgetPrefixIcon,
    this.focusNodeC,
    this.inputFormattersCustom,
    this.keyboardType,
    this.maxLines,
    this.colorHintText,
    this.minLines,
    this.heightStyleText,
    required this.showSuffix,
    this.showPassWordText = false,
    this.isReadOnly,
    this.isEnabled,
    this.onTapTextField,
    this.textDirectionC,
    this.sufixSVG,
    this.widthField,
    this.fontFamilyC,
    this.prefixText,
    this.contentPaddingField = 10,
    required this.showPrefix,
    this.textFieldControlr,
    required this.hintText,
    this.functionSuffixIcon,
    this.validatorCustom,
    this.hieghtTextField,
  });
  final bool showSuffix;
  final bool? isEnabled;
  final bool showPrefix;
  final FocusNode? focusNodeC;
  final bool showPassWordText;
  final double? widthField;
  final Widget? widgetPrefixIcon;
  final double? heightStyleText;
  final double? hieghtTextField;
  final double contentPaddingField;
  final String? prefixText;
  final String hintText;
  final String? initText;
  final Color? colorHintText;
  final int? maxLines;
  final int? minLines;
  final String? isReadOnly;
  final List<TextInputFormatter>? inputFormattersCustom;
  final String? sufixSVG;
  final void Function()? onTapTextField;
  final String? fontFamilyC;
  final TextInputType? keyboardType;
  final TextDirection? textDirectionC;
  final TextEditingController? textFieldControlr;
  final void Function()? functionSuffixIcon;
  final void Function(String? text)? onSavedFunction;
  final String? Function(String?)? validatorCustom;

  @override
  Widget build(BuildContext context) {
    return
        // ClipRRect(
        //   child: SizedBox(
        //     width: widthField ?? 350.w,
        //     child:
        //
        // SizedBox(
        // height: 56.h,
        // child:
        SizedBox(
      height: hieghtTextField,
      width: widthField,
      child: TextFormField(
        focusNode: focusNodeC,
        onTap: onTapTextField,
        obscureText: showPassWordText,
        textDirection: textDirectionC,
        inputFormatters: inputFormattersCustom,
        readOnly: isReadOnly != null ? true : false,
        keyboardType: keyboardType,
        style: TextStyle(
            fontFamily: fontFamilyC ?? AppFonts.almaraiRegular,
            fontSize: 16.sp,
            height: heightStyleText,
            color: AppColors.textblackLight),
        initialValue: initText,
        onSaved: onSavedFunction,
        enabled: isEnabled,
        controller: textFieldControlr,
        maxLines: maxLines,
        minLines: minLines,
        // cursorHeight: 20,
        validator: validatorCustom,

        cursorColor: AppColors.purpleMainColor,
        decoration: InputDecoration(
          prefixIcon: prefixText != null
              ? Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w),
                  child: prefixText != null
                      ? Text(
                          prefixText!,
                          style: const TextStyle(
                              color: AppColors.textblackLight,
                              fontFamily: AppFonts.almaraiRegular),
                        )
                      : null,
                )
              : widgetPrefixIcon,
          contentPadding: EdgeInsets.all(contentPaddingField),
          // EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 10.w),
          suffixIcon: showSuffix
              ? InkWell(
                  radius: 15,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(50.r),
                  onTap: functionSuffixIcon,
                  child: Container(
                    padding: EdgeInsets.all(
                        sufixSVG == AppImages.eyeOpenPurple ? 10 : 12),
                    height: 14.h,
                    width: 14.w,
                    child: SvgPicture.asset(sufixSVG!),
                  ),
                )
              : null,
          hintStyle: TextStyle(
              fontFamily: AppFonts.almaraiRegular,
              fontSize: 16.sp,
              height: 1.15,
              color: colorHintText ?? AppColors.greyTextHint),
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            // gapPadding: 56,

            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
            borderSide: const BorderSide(color: AppColors.colorRed),
          ),
          errorStyle: const TextStyle(fontFamily: AppFonts.almaraiRegular),
          border: OutlineInputBorder(
            // gapPadding: 56,
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
            borderSide: const BorderSide(color: AppColors.greyStrokTextField),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
            borderSide: const BorderSide(color: AppColors.greyStrokTextField),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
              borderSide:
                  const BorderSide(color: AppColors.greyStrokTextField)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
            borderSide: const BorderSide(color: AppColors.purpleMainColor),
          ),
        ),
      ),
    )
        // )
        // ,

        //   ),
        // )
        ;
  }
}
