import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/fonts_path_class.dart';

class CustomDivisionAddDetailsOrder extends StatelessWidget {
  const CustomDivisionAddDetailsOrder({
    super.key,
    this.isSelectedPFMLaser,
    this.changingMethodPFMLaser,
    this.isSelectedTempoary,
    this.isSelectedEMaxSuprem,
    this.isSelectedZicronPrettauAnterior,
    this.isSelectedZicronFacingEMax,
    this.isSelectedZicronLayered,
    this.isSelectedZicronFullAnatomy,
    this.isSelectedEMaxPress,
    this.isSelectedInlayAndOnlay,
    this.changingMethodTempoary,
    this.changingMethodEMaxSuprem,
    this.changingMethodZicronPrettauAnterior,
    this.changingMethodZicronFacingEMax,
    this.changingMethodZicronLayered,
    this.changingMethodZicronFullAnatomy,
    this.changingMethodEMaxPress,
    this.changingMethodInlayAndOnlay,
    this.activeColorPFMLaser,
    this.activeColorTempoary,
    this.activeColorEMaxSuprem,
    this.activeColorZicronPrettauAnterior,
    this.activeColorZicronFacingEMax,
    this.activeColorZicronLayered,
    this.activeColorisSelectedZicronFullAnatomy,
    this.activeColorEMaxPress,
    this.activeColorInlayAndOnlay,
  });

  //
  final int? isSelectedPFMLaser;
  final Color? activeColorPFMLaser;
  final void Function()? changingMethodPFMLaser;
  final int? isSelectedTempoary;
  final Color? activeColorTempoary;
  final void Function()? changingMethodTempoary;
  final int? isSelectedEMaxSuprem;
  final Color? activeColorEMaxSuprem;
  final void Function()? changingMethodEMaxSuprem;
  final int? isSelectedZicronPrettauAnterior;
  final Color? activeColorZicronPrettauAnterior;
  final void Function()? changingMethodZicronPrettauAnterior;
  final int? isSelectedZicronFacingEMax;
  final Color? activeColorZicronFacingEMax;
  final void Function()? changingMethodZicronFacingEMax;
  final int? isSelectedZicronLayered;
  final Color? activeColorZicronLayered;
  final void Function()? changingMethodZicronLayered;
  final int? isSelectedZicronFullAnatomy;
  final Color? activeColorisSelectedZicronFullAnatomy;
  final void Function()? changingMethodZicronFullAnatomy;
  final int? isSelectedEMaxPress;
  final Color? activeColorEMaxPress;
  final void Function()? changingMethodEMaxPress;
  final int? isSelectedInlayAndOnlay;
  final Color? activeColorInlayAndOnlay;
  final void Function()? changingMethodInlayAndOnlay;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: [
        //
        buildItemBottomSgeetDivisions(
          widthItem: 107.84,
          widthItemText: 81.45,
          activeColorCheckBox: activeColorPFMLaser,
          isSelected: isSelectedPFMLaser!,
          changingMethod: changingMethodPFMLaser!,
          textItem: 'PFM laser',
          spaceBetweenCheckAndText: 10.33,
          marginRight: 16.06,
          marginTop: 19,
        ),
        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedTempoary!,
          activeColorCheckBox: activeColorTempoary,
          changingMethod: changingMethodTempoary!,
          widthItem: 113.58,
          widthItemText: 87.19,
          textItem: 'Temporary',
          spaceBetweenCheckAndText: 10.33,
          marginRight: 16.06,
          marginTop: 19,
        ),

        //
        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedInlayAndOnlay!,
          activeColorCheckBox: activeColorInlayAndOnlay,
          changingMethod: changingMethodInlayAndOnlay!,
          widthItem: 120.46,
          widthItemText: 94.07,
          textItem: 'Inlay&onlay',
          spaceBetweenCheckAndText: 10.33,
          marginTop: 19,
        ),

        //
        //
        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedEMaxPress!,
          activeColorCheckBox: activeColorEMaxPress,
          changingMethod: changingMethodEMaxPress!,
          widthItem: 113.58,
          widthItemText: 87.19,
          textItem: 'e-max press',
          marginRight: 9.42,
          spaceBetweenCheckAndText: 10.33,
          marginTop: 30,
        ),

        //
        //
        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedZicronFullAnatomy!,
          activeColorCheckBox: activeColorisSelectedZicronFullAnatomy,
          changingMethod: changingMethodZicronFullAnatomy!,
          widthItem: 113.58,
          widthItemText: 87.19,
          textItem: 'Zircon full anatomy',
          spaceBetweenCheckAndText: 10.33,
          marginRight: 16.96,
          marginTop: 30,
        ),

        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedZicronLayered!,
          activeColorCheckBox: activeColorZicronLayered,
          changingMethod: changingMethodZicronLayered!,
          widthItem: 120.46,
          widthItemText: 94.07,
          textItem: 'Zircon layered',
          spaceBetweenCheckAndText: 10.33,
          marginTop: 30,
        ),

        //

        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedZicronFacingEMax!,
          activeColorCheckBox: activeColorZicronFacingEMax,
          changingMethod: changingMethodZicronFacingEMax!,
          widthItem: 107.84,
          widthItemText: 81.45,
          textItem: 'Zircon facing e-max',
          spaceBetweenCheckAndText: 10.33,
          marginRight: 16.16,
          marginTop: 30,
        ),

        //
        //

        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedZicronPrettauAnterior!,
          activeColorCheckBox: activeColorZicronPrettauAnterior,
          changingMethod: changingMethodZicronPrettauAnterior!,
          widthItem: 107.84,
          widthItemText: 81.45,
          textItem: 'Zircon prettau anterior',
          spaceBetweenCheckAndText: 10.33,
          marginRight: 16.16,
          marginTop: 30,
        ),

        //
        buildItemBottomSgeetDivisions(
          isSelected: isSelectedEMaxSuprem!,
          activeColorCheckBox: activeColorEMaxSuprem,
          changingMethod: changingMethodEMaxSuprem!,
          widthItem: 120.46,
          widthItemText: 94.07,
          textItem: 'e-max suprem',
          spaceBetweenCheckAndText: 10.33,
          // marginRight: 16.16,
          marginTop: 30,
        ),

        //
        //

        //

        //
      ],
    );
  }

  //

  buildItemBottomSgeetDivisions({
    required double widthItem,
    required double widthItemText,
    required int isSelected,
    required Color? activeColorCheckBox,
    // required bool isActive,
    required void Function() changingMethod,
    required double spaceBetweenCheckAndText,
    double marginRight = 0,
    double marginTop = 0,
    double marginBotom = 0,
    required String textItem,
  }) {
    //
    return Container(
      margin: EdgeInsets.only(right: marginRight.w, top: marginTop.h),
      width: widthItem.w,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              // color: Colors.red,
              width: 16.06.w,
              height: 14.h,
              // padding: EdgeInsets.symmetric(vertical: 8),

              child:
                  // Transform.scale(
                  //   scale: 0.8,
                  //   child:
                  //   GetBuilder<CreateNewRequestController>(builder: (_) {
                  // return
                  Checkbox(
                      checkColor: activeColorCheckBox,
                      activeColor: activeColorCheckBox,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      value: isSelected == 1 ? true : false,
                      splashRadius: 30.r,
                      onChanged:
                          //  isActive
                          //     ?
                          (value) {
                        //
                        //

                        //
                        changingMethod();
                        //
                      }
                      // : null,
                      )
              // ;
              // }),
              // ),
              ),

          //
          SizedBox(
            width: spaceBetweenCheckAndText.w,
          ),
          //
          SizedBox(
            // width: 87.w,
            width: widthItemText.w,
            child: Text(
              textItem,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16.sp, fontFamily: AppFonts.almaraiRegular),
            ),
          )
        ],
      ),
    );
    // End Method Item Bottom Sheet Divisions
  }
}
