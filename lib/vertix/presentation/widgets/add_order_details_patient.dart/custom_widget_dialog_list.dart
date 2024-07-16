import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/theme/colors_app.dart';
import '../../../../core/utils/fonts_path_class.dart';

class CustomWidgetDialogListAddOrderPhaseTwoPatientDetails
    extends StatelessWidget {
  const CustomWidgetDialogListAddOrderPhaseTwoPatientDetails({
    super.key,
    this.onTapInkWell,
    required this.listString,
    required this.chosenText,
  });

  //
  final void Function(String value)? onTapInkWell;
  final List<String> listString;
  final String chosenText;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //
      itemCount: listString.length,
      itemBuilder: (context, index) {
        //
        final itemText = listString[index];
        //
        return InkWell(
          onTap: () {
            //
            onTapInkWell!(itemText);
            //
            Get.back();
          },
          child: Container(
            // height: 100,
            color: itemText == chosenText ? AppColors.purpleMainColor : null,
            // padding: EdgeInsets.only(bottom: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text
                // Space
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  itemText,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: itemText == chosenText
                        ? AppColors.backGroundAndTextWhite
                        : AppColors.textblackLight,
                    fontFamily: AppFonts.almaraiRegular,
                    height: 1.15,
                  ),
                ),
                // Space
                SizedBox(
                  height: 10.h,
                ),

                // Divider
                const Divider(
                  height: 0,
                  color: AppColors.greyCreateNewRequesText,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
