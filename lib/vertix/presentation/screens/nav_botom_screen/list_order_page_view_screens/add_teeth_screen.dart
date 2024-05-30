import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../widgets/custom_textfield_outline.dart';

class AddedTeeethsScreen extends StatelessWidget {
  AddedTeeethsScreen({
    super.key,
  });

  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        //
        //
        Container(
          height: 44.h,
          // width: 50,
          // color: Colors.amber,
        ),

        //
        Container(
          height: 17.h,
          // width: 50,
          // color: Colors.red,
        ),

        //
        Container(
          height: 41.h,
          margin: EdgeInsets.symmetric(horizontal: 22.w),
          // width: 50,
          // color: Colors.pink,
          child: Row(
            children: [
              //
              Container(),

              //
              const Spacer(),
              //

              ZoomTapAnimation(
                child: InkWell(
                  //
                  onTap: () {
                    //
                    _navBottomController.changeCurrnentIndexListOrderScreen(1);
                    //
                  },
                  //
                  child: Container(
                    height: 41.h,
                    width: 41.w,
                    padding: EdgeInsets.only(
                        top: 11.h, bottom: 11.h, left: 10.w, right: 12.w),
                    decoration: BoxDecoration(
                        color: AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: SvgPicture.asset(AppImages.backArrow),
                  ),
                ),
              )
              // End Children Row
            ],
          ),
        ),

        //

        //

        //
        // Spacing
        // ========================
        SizedBox(
          height: 24.h,
        ),

        // Texts
        //
        Container(
          margin: EdgeInsets.only(right: 22.w),
          height: 24.h,
          child: Row(
            children: [
              //

              Text.rich(
                TextSpan(
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.greyCreateNewRequesText),
                    children: const [
                      //
                      TextSpan(
                        text: AppStringtext
                            .crateNewRequestPartOneAddOrderPahseOneScrn,
                      ),

                      TextSpan(
                          text: AppStringtext
                              .crateNewRequestPartTwoAddOrderPahseOneScrn,
                          style: TextStyle(color: AppColors.purpleMainColor)),

                      TextSpan(
                        text: AppStringtext
                            .crateNewRequestPartThreeAddOrderPahseOneScrn,
                      ),

                      //
                    ]),
              ),

              SizedBox(
                width: 10.w,
              ),

              //

              Container(
                height: 24.h,
                padding: EdgeInsets.only(left: 7.w, right: 7.w),
                decoration: BoxDecoration(
                  color: AppColors.almostWhiteDidntSaveBtn,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Center(
                  child: Text(
                    AppStringtext.didntSaveAddOrderPahseOneScrn,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.redCancel),
                  ),
                ),
              ),

              //

              // End Children Row Texts
            ],
          ),
        ),

        //
        // =====================================================================

        //

        Container(
          height: 591.h,
          child: Stack(
            children: [
              //

              //
              //  1
              methodPositionedSvgTeeth(
                numberImage: 1,
                imageSvg: AppImages.teeth1,
                hieghtImage: 46.33,
                widthImage: 44.4,
                topPosition: 234.3,
                bottomPosition: 310.37,
                leftPosition: 59.82,
                rightPosition: 323.78,
              ),

              //
              //  2
              methodPositionedSvgTeeth(
                numberImage: 2,
                imageSvg: AppImages.teeth2,
                hieghtImage: 45.04,
                widthImage: 42.55,
                topPosition: 193.06,
                bottomPosition: 352.9,
                leftPosition: 68.88,
                rightPosition: 316.56,
              ),

              //
              //  3
              methodPositionedSvgTeeth(
                numberImage: 3,
                imageSvg: AppImages.teeth3,
                hieghtImage: 51.13,
                widthImage: 48.26,
                topPosition: 149.4,
                bottomPosition: 390.49,
                leftPosition: 78.58,
                rightPosition: 301.16,
              ),

              //
              //  4
              methodPositionedSvgTeeth(
                numberImage: 4,
                imageSvg: AppImages.teeth4,
                hieghtImage: 41.6,
                widthImage: 47.89,
                topPosition: 116.93,
                bottomPosition: 432.47,
                leftPosition: 89.74,
                rightPosition: 290.37,
              ),

              //
              //  5
              methodPositionedSvgTeeth(
                numberImage: 5,
                imageSvg: AppImages.teeth5,
                hieghtImage: 41,
                widthImage: 45.35,
                topPosition: 88.47,
                bottomPosition: 461.54,
                leftPosition: 101.93,
                rightPosition: 280.71,
              ),

              //
              //  6
              methodPositionedSvgTeeth(
                numberImage: 6,
                imageSvg: AppImages.teeth6,
                hieghtImage: 36.2,
                widthImage: 31.09,
                topPosition: 63.14,
                bottomPosition: 491.66,
                leftPosition: 123.37,
                rightPosition: 273.54,
              ),

              //
              //  7
              methodPositionedSvgTeeth(
                numberImage: 7,
                imageSvg: AppImages.teeth7,
                hieghtImage: 34.04,
                widthImage: 29.7,
                topPosition: 41.18,
                bottomPosition: 515.77,
                leftPosition: 144.91,
                rightPosition: 253.39,
              ),

              //
              //  8
              methodPositionedSvgTeeth(
                numberImage: 8,
                imageSvg: AppImages.teeth8,
                hieghtImage: 52.56,
                widthImage: 52.37,
                topPosition: 16.36,
                bottomPosition: 522.08,
                leftPosition: 164.64,
                rightPosition: 210.98,
              ),

              //
              //  9
              methodPositionedSvgTeeth(
                numberImage: 9,
                imageSvg: AppImages.teeth9,
                hieghtImage: 52.92,
                widthImage: 52.73,
                topPosition: 16,
                bottomPosition: 522.08,
                leftPosition: 199.11,
                rightPosition: 176.15,
              ),

              //
              //  10
              methodPositionedSvgTeeth(
                numberImage: 10,
                imageSvg: AppImages.teeth10,
                hieghtImage: 34.39,
                widthImage: 29.6,
                topPosition: 40.02,
                bottomPosition: 516.59,
                leftPosition: 243.55,
                rightPosition: 154.85,
              ),

              //
              //  11
              methodPositionedSvgTeeth(
                numberImage: 11,
                imageSvg: AppImages.teeth11,
                hieghtImage: 36.58,
                widthImage: 31.04,
                topPosition: 64.28,
                bottomPosition: 490.14,
                leftPosition: 262.59,
                rightPosition: 134.37,
              ),

              //
              //  12
              methodPositionedSvgTeeth(
                numberImage: 12,
                imageSvg: AppImages.teeth12,
                hieghtImage: 41,
                widthImage: 45.35,
                topPosition: 88.47,
                bottomPosition: 461.54,
                leftPosition: 270.19,
                rightPosition: 112.45,
              ),

              //
              //  13
              methodPositionedSvgTeeth(
                numberImage: 13,
                imageSvg: AppImages.teeth13,
                hieghtImage: 42.03,
                widthImage: 48.25,
                topPosition: 116.5,
                bottomPosition: 432.47,
                leftPosition: 281.18,
                rightPosition: 98.57,
              ),

              //
              //  14
              methodPositionedSvgTeeth(
                numberImage: 14,
                imageSvg: AppImages.teeth14,
                hieghtImage: 51.25,
                widthImage: 49.33,
                topPosition: 149.29,
                bottomPosition: 390.46,
                leftPosition: 291.29,
                rightPosition: 87.38,
              ),

              //
              //  15
              methodPositionedSvgTeeth(
                numberImage: 15,
                imageSvg: AppImages.teeth15,
                hieghtImage: 45.04,
                widthImage: 42.55,
                topPosition: 193.06,
                bottomPosition: 352.9,
                leftPosition: 306.01,
                rightPosition: 79.44,
              ),

              //
              //  16
              methodPositionedSvgTeeth(
                numberImage: 16,
                imageSvg: AppImages.teeth16,
                hieghtImage: 46.33,
                widthImage: 44.4,
                topPosition: 233.54,
                bottomPosition: 311.13,
                leftPosition: 314.02,
                rightPosition: 69.58,
              ),

              //
              // ===============================================================
              //
              // Mandible Or Lower jaw
              //

              //

              //
              //  17
              methodPositionedSvgTeeth(
                numberImage: 17,
                imageSvg: AppImages.teeth17,
                hieghtImage: 46.09,
                widthImage: 47.42,
                topPosition: 296.55,
                bottomPosition: 248.36,
                leftPosition: 310.58,
                rightPosition: 70,
              ),

              //
              //  18
              methodPositionedSvgTeeth(
                numberImage: 18,
                imageSvg: AppImages.teeth18,
                hieghtImage: 46.32,
                widthImage: 46.47,
                topPosition: 341.09,
                bottomPosition: 203.59,
                leftPosition: 301.68,
                rightPosition: 79.85,
              ),

              //
              //  19
              methodPositionedSvgTeeth(
                numberImage: 19,
                imageSvg: AppImages.teeth19,
                hieghtImage: 52.08,
                widthImage: 50.44,
                topPosition: 382.93,
                bottomPosition: 155.99,
                leftPosition: 285.36,
                rightPosition: 92.2,
              ),

              //
              //  20
              methodPositionedSvgTeeth(
                numberImage: 20,
                imageSvg: AppImages.teeth20,
                hieghtImage: 46.34,
                widthImage: 49.35,
                topPosition: 426.42,
                bottomPosition: 118.24,
                leftPosition: 272.07,
                rightPosition: 106.58,
              ),

              //
              //  21
              methodPositionedSvgTeeth(
                numberImage: 21,
                imageSvg: AppImages.teeth21,
                hieghtImage: 32.66,
                widthImage: 32.88,
                topPosition: 464.21,
                bottomPosition: 94.13,
                leftPosition: 268.45,
                rightPosition: 126.68,
              ),

              //
              //  22
              methodPositionedSvgTeeth(
                numberImage: 22,
                imageSvg: AppImages.teeth22,
                hieghtImage: 43.56,
                widthImage: 41.55,
                topPosition: 483.8,
                bottomPosition: 63.64,
                leftPosition: 247.33,
                rightPosition: 139.12,
              ),

              //
              //  23
              methodPositionedSvgTeeth(
                numberImage: 23,
                imageSvg: AppImages.teeth23,
                hieghtImage: 35.43,
                widthImage: 25.47,
                topPosition: 505.97,
                bottomPosition: 49.61,
                leftPosition: 234.59,
                rightPosition: 167.94,
              ),

              //
              //  24
              methodPositionedSvgTeeth(
                numberImage: 24,
                imageSvg: AppImages.teeth24,
                hieghtImage: 33.78,
                widthImage: 25.78,
                topPosition: 513.53,
                bottomPosition: 43.68,
                leftPosition: 207.42,
                rightPosition: 194.8,
              ),

              //
              //  25
              methodPositionedSvgTeeth(
                numberImage: 25,
                imageSvg: AppImages.teeth25,
                hieghtImage: 33.78,
                widthImage: 25.78,
                topPosition: 513.53,
                bottomPosition: 43.68,
                leftPosition: 180.07,
                rightPosition: 222.14,
              ),

              //
              //  26
              methodPositionedSvgTeeth(
                numberImage: 26,
                imageSvg: AppImages.teeth26,
                hieghtImage: 35.43,
                widthImage: 25.31,
                topPosition: 505.97,
                bottomPosition: 49.61,
                leftPosition: 153.21,
                rightPosition: 249.49,
              ),

              //
              //  27
              methodPositionedSvgTeeth(
                numberImage: 27,
                imageSvg: AppImages.teeth27,
                hieghtImage: 42.79,
                widthImage: 40.03,
                topPosition: 483.21,
                bottomPosition: 65,
                leftPosition: 125.83,
                rightPosition: 262.14,
              ),

              //
              //  28
              methodPositionedSvgTeeth(
                numberImage: 28,
                imageSvg: AppImages.teeth28,
                hieghtImage: 31.02,
                widthImage: 32.27,
                topPosition: 466.93,
                bottomPosition: 93.05,
                leftPosition: 109.7,
                rightPosition: 286.03,
              ),

              //
              //  29
              methodPositionedSvgTeeth(
                numberImage: 29,
                imageSvg: AppImages.teeth29,
                hieghtImage: 45.18,
                widthImage: 48.68,
                topPosition: 429.37,
                bottomPosition: 116.45,
                leftPosition: 88.52,
                rightPosition: 290.8,
              ),

              //
              //  30
              methodPositionedSvgTeeth(
                numberImage: 30,
                imageSvg: AppImages.teeth30,
                hieghtImage: 52.08,
                widthImage: 50.44,
                topPosition: 384.48,
                bottomPosition: 154.44,
                leftPosition: 77.41,
                rightPosition: 300.15,
              ),

              //
              //  31
              methodPositionedSvgTeeth(
                numberImage: 31,
                imageSvg: AppImages.teeth31,
                hieghtImage: 45.93,
                widthImage: 45.45,
                topPosition: 341.92,
                bottomPosition: 203.14,
                leftPosition: 68.98,
                rightPosition: 313.58,
              ),

              //
              //  32
              methodPositionedSvgTeeth(
                numberImage: 32,
                imageSvg: AppImages.teeth32,
                hieghtImage: 46.09,
                widthImage: 47.42,
                topPosition: 295,
                bottomPosition: 249.91,
                leftPosition: 60,
                rightPosition: 320.58,
              ),

              // End Children  Stack
            ],
          ),
        ),

        //
        //
        //
        // Btn Add Teeth
        // ========================
        ZoomTapAnimation(
          child: InkWell(
            //
            onTap: () {
              //
              // Get.bottomSheet(

              //   Container(
              //   height: 1500.h,
              //   color: Colors.amber,
              // ));
              buildMethodBottomSheet(contextM: context);
              //
            },
            //
            child: Container(
              height: 56.h,
              width: 384.w,
              decoration: BoxDecoration(
                  color: AppColors.purpleMainColor,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Center(
                child: Text(
                  AppStringtext.btnAddTeethScrn,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: AppFonts.almaraiBold,
                    color: AppColors.backGroundAndTextWhite,
                  ),
                ),
              ),
            ),
          ),
        ),

        // //
        // // =====================================================================
        // Container(
        //   height: 44.h,
        //   color: Colors.pink,
        // ),
        // // =====================================================================
        // Container(
        //   height: 10.h,
        //   color: Colors.orange,
        // ),
        // End Children Column
      ],
    );
  }

  methodPositionedSvgTeeth({
    //
    required double topPosition,
    required double bottomPosition,
    required double leftPosition,
    required double rightPosition,
    required double hieghtImage,
    required double widthImage,
    required double numberImage,
    required String imageSvg,
    //
  }) {
    //
    return Positioned(
      top: topPosition.h,
      bottom: bottomPosition.h,
      left: leftPosition.w,
      right: rightPosition.w,
      child: ZoomTapAnimation(
        child: InkWell(
          //
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          //
          onTap: () {
            //
            print('\n');
            print('====================================================');
            print('\n');
            print('The Tooth Number is $numberImage');
            print('\n');
            print('====================================================');
            print('\n');
            //
          },
          //
          child: SizedBox(
            height: hieghtImage.h,
            width: widthImage.w,
            child: SvgPicture.asset(imageSvg),
          ),
        ),
      ),
    );

    // End Method Positioned
  }

  void buildMethodBottomSheet({required BuildContext contextM}) {
    //
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(22.r),
        ),
      ),
      context: contextM,
      builder: (_) => Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
        height: 770.h,
        // color: Colors.amber,
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            //
            //
            Container(
              height: 5.h,
              margin: EdgeInsets.only(top: 13.h, right: 147.w, left: 146.w),
              width: 135.w,
              decoration: BoxDecoration(
                color: AppColors.greyBotomSheet,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),

            //
            SizedBox(
              height: 20.h,
            ),

            //
            buildTextAndFieldTextFormField(
                // heightField: 185.h,
                titleField: AppStringtext.describeFieldAddTeethScrn,
                botomPading: 11.h,
                maxLinesTextField: 9),

            //
            buildTextAndFieldTextFormField(
                // heightField: 185.h,
                titleField: AppStringtext.typeProductFieldAddTeethScrn,
                botomPading: 11.h,
                maxLinesTextField: 3),

            //
            buildTextAndFieldTextFormField(
                // heightField: 185.h,
                titleField: AppStringtext.toothStateFieldAddTeethScrn,
                botomPading: 21.h,
                maxLinesTextField: 3),

            //
            Padding(
              padding: EdgeInsets.only(right: 22.h),
              child: Text(
                AppStringtext.divisionsAddTeethScrn,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 22.w, left: 32.w, top: 10.h),
              child: const Divider(
                height: 0,
                color: AppColors.greyFieldBotomSheet,
              ),
            ),

            //
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(right: 22.w, left: 32.w),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    //
                    buildItemBottomSgeetDivisions(
                      widthItem: 107.84,
                      widthItemText: 81.45,
                      textItem: 'PFM laser',
                      spaceBetweenCheckAndText: 10.33,
                      marginRight: 16.06,
                      marginTop: 19,
                    ),
                    //
                    buildItemBottomSgeetDivisions(
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
                      widthItem: 113.58,
                      widthItemText: 87.19,
                      textItem: 'Zircon full anatomy',
                      spaceBetweenCheckAndText: 10.33,
                      marginRight: 16.96,
                      marginTop: 30,
                    ),

                    //
                    buildItemBottomSgeetDivisions(
                      widthItem: 120.46,
                      widthItemText: 94.07,
                      textItem: 'Zircon layered',
                      spaceBetweenCheckAndText: 10.33,
                      marginTop: 30,
                    ),

                    //

                    //
                    buildItemBottomSgeetDivisions(
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
                      widthItem: 107.84,
                      widthItemText: 81.45,
                      textItem: 'Zircon prettau anterior',
                      spaceBetweenCheckAndText: 10.33,
                      marginRight: 16.16,
                      marginTop: 30,
                    ),

                    //
                    buildItemBottomSgeetDivisions(
                      widthItem: 120.46,
                      widthItemText: 94.07,
                      textItem: 'e-max suprem',
                      spaceBetweenCheckAndText: 10.33,
                      marginRight: 16.16,
                      marginTop: 30,
                    ),

                    //
                    //

                    //

                    //
                  ],
                ),
              ),
            ),

            //
            SizedBox(
              height: 45.h,
            ),
            //

            ZoomTapAnimation(
              child: InkWell(
                //
                onTap: () {
                  //
                  Get.back();
                  //
                },
                //
                child: Container(
                  height: 56.h,
                  margin: EdgeInsets.symmetric(horizontal: 22.w),
                  decoration: BoxDecoration(
                    color: AppColors.purpleMainColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Text(
                      AppStringtext.createAddTeethScrn,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.backGroundAndTextWhite,
                      ),
                    ),
                  ),
                ),
              ),
            )

            //

            //
          ],
        ),
      ),
    );
    // End Method Bottom Sheet
  }

  buildTextAndFieldTextFormField({
    required String titleField,
    required int maxLinesTextField,
    // required double heightField,
    double botomPading = 15,
  }) {
    //
    return Padding(
      padding: EdgeInsets.only(left: 41.w, right: 41.w, bottom: botomPading.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //
          SizedBox(
            height: 20.h,
            child: Text(
              titleField,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: AppFonts.almaraiRegular,
                  color: Colors.black),
            ),
          ),

          //
          SizedBox(
            height: 11.h,
          ),

          //
          SizedBox(
            // height: heightField.h,
            child: CustomTextfieldOutLineProduct(
              hintText: '',
              minLines: 1,
              maxLines: maxLinesTextField,
              showPrefix: false,
              showSuffix: false,
              contentPaddingField: 5,
            ),
          )
          // End Children Column Field
        ],
      ),
    );
    // End Method Text && TExtFormField
  }

  buildItemBottomSgeetDivisions({
    required double widthItem,
    required double widthItemText,
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
          Container(
            // color: Colors.red,
            width: 16.06.w,
            height: 14.h,
            // padding: EdgeInsets.symmetric(vertical: 8),

            child:
                // Transform.scale(
                //   scale: 0.8,
                //   child:
                Checkbox(
              // visualDensity: VisualDensity(
              //   horizontal: VisualDensity.minimumDensity,
              //   vertical: VisualDensity.minimumDensity,
              // ),
              // visualDensity: VisualDensity.compact,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r),
              ),
              value: false,
              onChanged: (value) {},
            ),
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
