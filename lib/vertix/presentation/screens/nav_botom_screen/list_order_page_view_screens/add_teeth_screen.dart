import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/animation/dots_loading.dart';
import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../../core/widgets/methods_widgets.dart';
import '../../../widgets/custom_textfield_outline.dart';

class AddedTeeethsScreen extends StatelessWidget {
  AddedTeeethsScreen({
    super.key,
  });

  final NavBottomController _navBottomController = Get.find();

  //

  final CreateNewRequestController _createNewRequestController = Get.find();

  //

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
              ZoomTapAnimation(
                child: GetBuilder<CreateNewRequestController>(
                    //
                    //
                    builder: (_) {
                  return InkWell(
                    //
                    onTap: _createNewRequestController
                            .listToothHistoryLogEntitiesControlr.isEmpty
                        ? () {
                            //
                            //  it should show a message thas says should fill information first
                            MethodsWidgetClass.snackBarMessageGetX(
                              titleSnack: 'إنتباه',
                              messageSnack: '',
                              messageRow: 'يجب اكمال المعلومات اولا',
                              colorTextTitle: AppColors.redCancel,
                              // colorTextBody: AppColors.redCancel,
                            );
                            //
                            //
                          }
                        : () async {
                            //
                            // _navBottomController.changeCurrnentIndexListOrderScreen(1);

                            //
                            Get.dialog(
                              barrierDismissible: false,
                              const Center(
                                child: StaggeredDotsWaveAnimation(
                                    size: 80,
                                    color:
                                        AppColors.whiteItemListOrderBackground),
                              ),
                            );

                            await _createNewRequestController
                                .addOrderVertixMethod();

                            //

                            //
                            if (!_createNewRequestController.status.isLoading) {
                              //
                              Get.back();
                              //
                              if (_createNewRequestController
                                  .status.isSuccess) {
                                //
                                MethodsWidgetClass.snackBarMessageGetX(
                                  titleSnack: 'نجاح',
                                  messageSnack: '',
                                  messageRow: 'تم اضافة الطلب بنجاح',
                                  colorTextTitle: AppColors.greenColor,

                                  // colorTextBody: AppColors.redCancel,
                                );

                                //
                                _createNewRequestController.onInit();
                                //
                                _navBottomController
                                    .changeCurrnentIndexListOrderScreen(0);
                              } else if (_createNewRequestController
                                      .status.isError &&
                                  _createNewRequestController
                                          .errorMessageAddOrder !=
                                      '') {
                                //
                                //
                                buildDialogErrorMessage(
                                  titleMessage: 'خطأ',
                                  bodyMessage: _createNewRequestController
                                      .errorMessageAddOrder,
                                );

                                //
                              }
                            }

                            //
                          },
                    //
                    child: Container(
                      height: 41.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: _createNewRequestController
                                .listToothHistoryLogEntitiesControlr.isEmpty
                            ? AppColors.greyInActiveColorBackground
                            : AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(8.r),
                        //
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //
                            SizedBox(
                              // width: 32.w,
                              height: 16.h,
                              child: Text(
                                AppStringtext.completeAddOrderPahseThisrd,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.almaraiBold,
                                  color: _createNewRequestController
                                          .listToothHistoryLogEntitiesControlr
                                          .isEmpty
                                      ? AppColors.greyInActiveColorText
                                      : AppColors.backGroundAndTextWhite,
                                ),
                              ),
                            ),
                            //
                            SizedBox(
                              width: 3.w,
                            ),

                            SizedBox(
                              height: 15.h,
                              width: 17.w,
                              child: SvgPicture.asset(
                                  _createNewRequestController
                                          .listToothHistoryLogEntitiesControlr
                                          .isEmpty
                                      ? AppImages.correctSignGrey
                                      : AppImages.correctSignWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),

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

        SizedBox(
          height: 591.h,
          child: GetBuilder<CreateNewRequestController>(
              //
              builder: (_) {
            return Stack(
              children: [
                //

                //
                //  1
                methodPositionedSvgTeeth(
                  numberImage: '18',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('18')
                          ? AppImages.teethGreen18
                          : returnImage(
                              numbrimage: '18',
                              toothImageWhite: AppImages.teeth18,
                              toothImageGreen: AppImages.teethGreen18,
                              toothImageOrange: AppImages.teethOrange18,
                              toothImageRed: AppImages.teethRed18,
                            ),
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
                  numberImage: '17',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('17')
                          ? AppImages.teethGreen17
                          : returnImage(
                              numbrimage: '17',
                              toothImageWhite: AppImages.teeth17,
                              toothImageGreen: AppImages.teethGreen17,
                              toothImageOrange: AppImages.teethOrange17,
                              toothImageRed: AppImages.teethRed17,
                            ),
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
                  numberImage: '16',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('16')
                          ? AppImages.teethGreen16
                          : returnImage(
                              numbrimage: '16',
                              toothImageWhite: AppImages.teeth16,
                              toothImageGreen: AppImages.teethGreen16,
                              toothImageOrange: AppImages.teethOrange16,
                              toothImageRed: AppImages.teethRed16,
                            ),
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
                  numberImage: '15',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('15')
                          ? AppImages.teethGreen15
                          : returnImage(
                              numbrimage: '15',
                              toothImageWhite: AppImages.teeth15,
                              toothImageGreen: AppImages.teethGreen15,
                              toothImageOrange: AppImages.teethOrange15,
                              toothImageRed: AppImages.teethRed15,
                            ),
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
                  numberImage: '14',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('14')
                          ? AppImages.teethGreen14
                          : returnImage(
                              numbrimage: '14',
                              toothImageWhite: AppImages.teeth14,
                              toothImageGreen: AppImages.teethGreen14,
                              toothImageOrange: AppImages.teethOrange14,
                              toothImageRed: AppImages.teethRed14,
                            ),
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
                  numberImage: '13',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('13')
                          ? AppImages.teethGreen13
                          : returnImage(
                              numbrimage: '13',
                              toothImageWhite: AppImages.teeth13,
                              toothImageGreen: AppImages.teethGreen13,
                              toothImageOrange: AppImages.teethOrange13,
                              toothImageRed: AppImages.teethRed13,
                            ),
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
                  numberImage: '12',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('12')
                          ? AppImages.teethGreen12
                          : returnImage(
                              numbrimage: '12',
                              toothImageWhite: AppImages.teeth12,
                              toothImageGreen: AppImages.teethGreen12,
                              toothImageOrange: AppImages.teethOrange12,
                              toothImageRed: AppImages.teethRed12,
                            ),
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
                  numberImage: '11',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('11')
                          ? AppImages.teethGreen11
                          : returnImage(
                              numbrimage: '11',
                              toothImageWhite: AppImages.teeth11,
                              toothImageGreen: AppImages.teethGreen11,
                              toothImageOrange: AppImages.teethOrange11,
                              toothImageRed: AppImages.teethRed11,
                            ),
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
                  numberImage: '21',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('21')
                          ? AppImages.teethGreen21
                          : returnImage(
                              numbrimage: '21',
                              toothImageWhite: AppImages.teeth21,
                              toothImageGreen: AppImages.teethGreen21,
                              toothImageOrange: AppImages.teethOrange21,
                              toothImageRed: AppImages.teethRed21,
                            ),
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
                  numberImage: '22',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('22')
                          ? AppImages.teethGreen22
                          : returnImage(
                              numbrimage: '22',
                              toothImageWhite: AppImages.teeth22,
                              toothImageGreen: AppImages.teethGreen22,
                              toothImageOrange: AppImages.teethOrange22,
                              toothImageRed: AppImages.teethRed22,
                            ),
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
                  numberImage: '23',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('23')
                          ? AppImages.teethGreen23
                          : returnImage(
                              numbrimage: '23',
                              toothImageWhite: AppImages.teeth23,
                              toothImageGreen: AppImages.teethGreen23,
                              toothImageOrange: AppImages.teethOrange23,
                              toothImageRed: AppImages.teethRed23,
                            ),
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
                  numberImage: '24',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('24')
                          ? AppImages.teethGreen24
                          : returnImage(
                              numbrimage: '24',
                              toothImageWhite: AppImages.teeth24,
                              toothImageGreen: AppImages.teethGreen24,
                              toothImageOrange: AppImages.teethOrange24,
                              toothImageRed: AppImages.teethRed24,
                            ),
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
                  numberImage: '25',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('25')
                          ? AppImages.teethGreen25
                          : returnImage(
                              numbrimage: '25',
                              toothImageWhite: AppImages.teeth25,
                              toothImageGreen: AppImages.teethGreen25,
                              toothImageOrange: AppImages.teethOrange25,
                              toothImageRed: AppImages.teethRed25,
                            ),
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
                  numberImage: '26',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('26')
                          ? AppImages.teethGreen26
                          : returnImage(
                              numbrimage: '26',
                              toothImageWhite: AppImages.teeth26,
                              toothImageGreen: AppImages.teethGreen26,
                              toothImageOrange: AppImages.teethOrange26,
                              toothImageRed: AppImages.teethRed26,
                            ),
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
                  numberImage: '27',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('27')
                          ? AppImages.teethGreen27
                          : returnImage(
                              numbrimage: '27',
                              toothImageWhite: AppImages.teeth27,
                              toothImageGreen: AppImages.teethGreen27,
                              toothImageOrange: AppImages.teethOrange27,
                              toothImageRed: AppImages.teethRed27,
                            ),
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
                  numberImage: '28',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('28')
                          ? AppImages.teethGreen28
                          : returnImage(
                              numbrimage: '28',
                              toothImageWhite: AppImages.teeth28,
                              toothImageGreen: AppImages.teethGreen28,
                              toothImageOrange: AppImages.teethOrange28,
                              toothImageRed: AppImages.teethRed28,
                            ),
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
                  numberImage: '38',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('38')
                          ? AppImages.teethGreen38
                          : returnImage(
                              numbrimage: '38',
                              toothImageWhite: AppImages.teeth38,
                              toothImageGreen: AppImages.teethGreen38,
                              toothImageOrange: AppImages.teethOrange38,
                              toothImageRed: AppImages.teethRed38,
                            ),
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
                  numberImage: '37',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('37')
                          ? AppImages.teethGreen37
                          : returnImage(
                              numbrimage: '37',
                              toothImageWhite: AppImages.teeth37,
                              toothImageGreen: AppImages.teethGreen37,
                              toothImageOrange: AppImages.teethOrange37,
                              toothImageRed: AppImages.teethRed37,
                            ),
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
                  numberImage: '36',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('36')
                          ? AppImages.teethGreen36
                          : returnImage(
                              numbrimage: '36',
                              toothImageWhite: AppImages.teeth36,
                              toothImageGreen: AppImages.teethGreen36,
                              toothImageOrange: AppImages.teethOrange36,
                              toothImageRed: AppImages.teethRed36,
                            ),
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
                  numberImage: '35',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('35')
                          ? AppImages.teethGreen35
                          : returnImage(
                              numbrimage: '35',
                              toothImageWhite: AppImages.teeth35,
                              toothImageGreen: AppImages.teethGreen35,
                              toothImageOrange: AppImages.teethOrange35,
                              toothImageRed: AppImages.teethRed35,
                            ),
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
                  numberImage: '34',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('34')
                          ? AppImages.teethGreen34
                          : returnImage(
                              numbrimage: '34',
                              toothImageWhite: AppImages.teeth34,
                              toothImageGreen: AppImages.teethGreen34,
                              toothImageOrange: AppImages.teethOrange34,
                              toothImageRed: AppImages.teethRed34,
                            ),
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
                  numberImage: '33',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('33')
                          ? AppImages.teethGreen33
                          : returnImage(
                              numbrimage: '33',
                              toothImageWhite: AppImages.teeth33,
                              toothImageGreen: AppImages.teethGreen33,
                              toothImageOrange: AppImages.teethOrange33,
                              toothImageRed: AppImages.teethRed33,
                            ),
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
                  numberImage: '32',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('32')
                          ? AppImages.teethGreen32
                          : returnImage(
                              numbrimage: '32',
                              toothImageWhite: AppImages.teeth32,
                              toothImageGreen: AppImages.teethGreen32,
                              toothImageOrange: AppImages.teethOrange32,
                              toothImageRed: AppImages.teethRed32,
                            ),
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
                  numberImage: '31',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('31')
                          ? AppImages.teethGreen31
                          : returnImage(
                              numbrimage: '31',
                              toothImageWhite: AppImages.teeth31,
                              toothImageGreen: AppImages.teethGreen31,
                              toothImageOrange: AppImages.teethOrange31,
                              toothImageRed: AppImages.teethRed31,
                            ),
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
                  numberImage: '41',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('41')
                          ? AppImages.teethGreen41
                          : returnImage(
                              numbrimage: '41',
                              toothImageWhite: AppImages.teeth41,
                              toothImageGreen: AppImages.teethGreen41,
                              toothImageOrange: AppImages.teethOrange41,
                              toothImageRed: AppImages.teethRed41,
                            ),
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
                  numberImage: '42',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('42')
                          ? AppImages.teethGreen42
                          : returnImage(
                              numbrimage: '42',
                              toothImageWhite: AppImages.teeth42,
                              toothImageGreen: AppImages.teethGreen42,
                              toothImageOrange: AppImages.teethOrange42,
                              toothImageRed: AppImages.teethRed42,
                            ),
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
                  numberImage: '43',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('43')
                          ? AppImages.teethGreen43
                          : returnImage(
                              numbrimage: '43',
                              toothImageWhite: AppImages.teeth43,
                              toothImageGreen: AppImages.teethGreen43,
                              toothImageOrange: AppImages.teethOrange43,
                              toothImageRed: AppImages.teethRed43,
                            ),
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
                  numberImage: '44',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('44')
                          ? AppImages.teethGreen44
                          : returnImage(
                              numbrimage: '44',
                              toothImageWhite: AppImages.teeth44,
                              toothImageGreen: AppImages.teethGreen44,
                              toothImageOrange: AppImages.teethOrange44,
                              toothImageRed: AppImages.teethRed44,
                            ),
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
                  numberImage: '45',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('45')
                          ? AppImages.teethGreen45
                          : returnImage(
                              numbrimage: '45',
                              toothImageWhite: AppImages.teeth45,
                              toothImageGreen: AppImages.teethGreen45,
                              toothImageOrange: AppImages.teethOrange45,
                              toothImageRed: AppImages.teethRed45,
                            ),
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
                  numberImage: '46',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('46')
                          ? AppImages.teethGreen46
                          : returnImage(
                              numbrimage: '46',
                              toothImageWhite: AppImages.teeth46,
                              toothImageGreen: AppImages.teethGreen46,
                              toothImageOrange: AppImages.teethOrange46,
                              toothImageRed: AppImages.teethRed46,
                            ),
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
                  numberImage: '47',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('47')
                          ? AppImages.teethGreen47
                          : returnImage(
                              numbrimage: '47',
                              toothImageWhite: AppImages.teeth47,
                              toothImageGreen: AppImages.teethGreen47,
                              toothImageOrange: AppImages.teethOrange47,
                              toothImageRed: AppImages.teethRed47,
                            ),
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
                  numberImage: '48',
                  imageSvg:
                      _createNewRequestController.isToothSelectedMethod('48')
                          ? AppImages.teethGreen48
                          : returnImage(
                              numbrimage: '48',
                              toothImageWhite: AppImages.teeth48,
                              toothImageGreen: AppImages.teethGreen48,
                              toothImageOrange: AppImages.teethOrange48,
                              toothImageRed: AppImages.teethRed48,
                            ),
                  hieghtImage: 46.09,
                  widthImage: 47.42,
                  topPosition: 295,
                  bottomPosition: 249.91,
                  leftPosition: 60,
                  rightPosition: 320.58,
                ),

                // End Children  Stack
              ],
            );
          }),
        ),

        //
        //
        //
        // Btn Add Teeth
        // ========================
        ZoomTapAnimation(
          child: GetBuilder<CreateNewRequestController>(builder: (_) {
            return InkWell(
              //
              onTap: _createNewRequestController.listSelectedTeeth.isEmpty
                  ? () {
                      //
                      //  it should show message tell user that he has to chose o tooth
                      MethodsWidgetClass.snackBarMessageGetX(
                        titleSnack: 'إنتباه',
                        messageSnack: '',
                        messageRow: 'يجب إختيار سن اولا',
                        colorTextTitle: AppColors.redCancel,
                        // colorTextBody: AppColors.redCancel,
                      );
                      //
                    }
                  : () {
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
                    color: _createNewRequestController.listSelectedTeeth.isEmpty
                        ? AppColors.greyInActiveColorBackground
                        : AppColors.purpleMainColor,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    AppStringtext.btnAddTeethScrn,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color:
                          _createNewRequestController.listSelectedTeeth.isEmpty
                              ? AppColors.greyInActiveColorText
                              : AppColors.backGroundAndTextWhite,
                    ),
                  ),
                ),
              ),
            );
          }),
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
    required String numberImage,
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

            //
            String typeOperator = _createNewRequestController
                .checkIFToothExistinLists(numberImage);

            //
            print('\n');
            print('\n');
            print('Screen The typeOperator is $typeOperator');
            print('\n');
            print('\n');

            //
            if (typeOperator == '') {
              //
              _createNewRequestController
                  .addEmptyToothToSelectedList(numberImage);
              _createNewRequestController.addToothToGroupTeethList(numberImage);
              //
            } else if (typeOperator == 'before') {
              //
              _createNewRequestController
                  .removeToothFromSelectedList(numberImage);
              //
            } else if (typeOperator == 'after') {
              //
              MethodsWidgetClass.dialogAskAreYouSure(
                textM: '',
                textDialog: 'هل تريد ازالة هـذا السن من المجموعة',
                onTapM: () {
                  //
                  _createNewRequestController.removeToothFromListToothHistorLog(
                      numberImage, null);
                  //
                  Get.back();
                  //
                },
              );
            } else if (typeOperator == 'after&&lastOne') {
              //
              //
              MethodsWidgetClass.dialogAskAreYouSure(
                textM: '',
                textDialog: 'سيتم ازالة كافة المعلومات المرتبطة بهذا السن',
                onTapM: () {
                  //
                  _createNewRequestController.removeToothFromListToothHistorLog(
                      numberImage, '');
                  //
                  Get.back();
                  //
                },
              );
            }
            //

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
              textFieldControlrMethod:
                  _createNewRequestController.toothDescriptionController,
              maxLinesTextField: 9,
            ),
            //

            GetBuilder<CreateNewRequestController>(builder: (_) {
              //
              return buildTextAndFieldTextFormField(
                onTapMethod: () {
                  //
                  //  it Should show dialog to select type product
                  //
                  buidlDialogChoseItem(
                    titleDialog: AppStringtext.typeProductFieldAddTeethScrn,
                    typeMethod: AppStringtext.typeProductFieldAddTeethScrn,
                    textToCompare: _createNewRequestController.productTypeText,
                    listString: _createNewRequestController.productTypeListScrn,
                  );
                  //
                },
                // heightField: 185.h,
                isReadOnly: '',
                initText: _createNewRequestController.productTypeText,
                titleField: AppStringtext.typeProductFieldAddTeethScrn,
                botomPading: 11.h,
                maxLinesTextField: 3,
              );
            }),
            //

            //
            GetBuilder<CreateNewRequestController>(builder: (_) {
              return buildTextAndFieldTextFormField(
                  //
                  onTapMethod: () {
                    //
                    // it show dialog to chose tooth status
                    //
                    buidlDialogChoseItem(
                      heightDialog: 140,
                      titleDialog: AppStringtext.toothStateFieldAddTeethScrn,
                      typeMethod: AppStringtext.toothStateFieldAddTeethScrn,
                      textToCompare:
                          _createNewRequestController.toothStatusTextScrn,
                      listString:
                          _createNewRequestController.toothStatusListScrn,
                    );

                    //
                  },
                  // heightField: 185.h,
                  isReadOnly: '',
                  initText: _createNewRequestController.toothStatusTextScrn,
                  titleField: AppStringtext.toothStateFieldAddTeethScrn,
                  botomPading: 21.h,
                  maxLinesTextField: 3);
            }),
            //

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
                child: GetBuilder<CreateNewRequestController>(builder: (_) {
                  return Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      //
                      buildItemBottomSgeetDivisions(
                        widthItem: 107.84,
                        widthItemText: 81.45,
                        isSelected: _createNewRequestController.pfmLaser,
                        changingMethod: () {
                          _createNewRequestController
                              .changeValuesDivsionTeeth('PFM laser');
                        },
                        textItem: 'PFM laser',
                        spaceBetweenCheckAndText: 10.33,
                        marginRight: 16.06,
                        marginTop: 19,
                      ),
                      //
                      buildItemBottomSgeetDivisions(
                        isSelected: _createNewRequestController.tempoary,
                        changingMethod: () {
                          _createNewRequestController
                              .changeValuesDivsionTeeth('Temporary');
                        },
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
                        isSelected: _createNewRequestController.inlayAndOnlay,
                        changingMethod: () {
                          //
                          _createNewRequestController
                              .changeValuesDivsionTeeth('Inlay&onlay');
                          //
                        },
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
                        isSelected: _createNewRequestController.eMaxPress,
                        changingMethod: () {
                          //
                          _createNewRequestController
                              .changeValuesDivsionTeeth('e-max press');
                          //
                        },
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
                        isSelected:
                            _createNewRequestController.zicronFullAnatomy,
                        changingMethod: () {
                          _createNewRequestController
                              .changeValuesDivsionTeeth('Zircon full anatomy');
                        },
                        widthItem: 113.58,
                        widthItemText: 87.19,
                        textItem: 'Zircon full anatomy',
                        spaceBetweenCheckAndText: 10.33,
                        marginRight: 16.96,
                        marginTop: 30,
                      ),

                      //
                      buildItemBottomSgeetDivisions(
                        isSelected: _createNewRequestController.zicronLayered,
                        changingMethod: () {
                          //
                          _createNewRequestController
                              .changeValuesDivsionTeeth('Zircon layered');
                          //
                        },
                        widthItem: 120.46,
                        widthItemText: 94.07,
                        textItem: 'Zircon layered',
                        spaceBetweenCheckAndText: 10.33,
                        marginTop: 30,
                      ),

                      //

                      //
                      buildItemBottomSgeetDivisions(
                        isSelected:
                            _createNewRequestController.zicronFacingEMax,
                        changingMethod: () {
                          //
                          _createNewRequestController
                              .changeValuesDivsionTeeth('Zircon facing e-max');
                          //
                        },
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
                        isSelected:
                            _createNewRequestController.zicronPrettauAnterior,
                        changingMethod: () {
                          //
                          _createNewRequestController.changeValuesDivsionTeeth(
                              'Zircon prettau anterior');
                          //
                        },
                        widthItem: 107.84,
                        widthItemText: 81.45,
                        textItem: 'Zircon prettau anterior',
                        spaceBetweenCheckAndText: 10.33,
                        marginRight: 16.16,
                        marginTop: 30,
                      ),

                      //
                      buildItemBottomSgeetDivisions(
                        isSelected: _createNewRequestController.eMaxSuprem,
                        changingMethod: () {
                          //
                          _createNewRequestController
                              .changeValuesDivsionTeeth('e-max suprem');
                          //
                        },
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
                  );
                }),
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
                  // if one of the fields is empty should show message to tell him to fill the field
                  //
                  final check = _createNewRequestController
                      .checkBottomSheetInformationFilled();
                  //
                  if (check) {
                    //
                    //
                    _createNewRequestController
                        .addEmptyToothToSelectedList(null);
                    //
                    // Add Item to List TeethHistory
                    _createNewRequestController
                        .addToListTeethHistoryLogEntities();
                    //
                    Get.back();
                    //
                    //
                  } else {
                    // show dialog message
                    //
                    buildDialogErrorMessage(
                      titleMessage: 'إنتباه',
                      bodyMessage:
                          _createNewRequestController.errorMessageBotomSheet,
                    );

                    // End Else
                  }

                  //
                },
                //
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
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
    String? isReadOnly,
    String? initText,
    void Function()? onTapMethod,
    TextEditingController? textFieldControlrMethod,
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

            child: isReadOnly != null
                ? SizedBox(
                    height: 48.h,
                    child: InkWell(
                      //
                      onTap: onTapMethod,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Container(
                        height: 48.h,
                        padding: EdgeInsets.only(right: 10.w),
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyStrokTextField,
                            ),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Text(
                          initText ?? '',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: AppFonts.almaraiRegular,
                            fontSize: 16.sp,
                            color: AppColors.textblackLight,
                          ),
                        ),
                      ),
                    ),
                  )
                : CustomTextfieldOutLineProduct(
                    hintText: '',
                    minLines: 1,
                    maxLines: maxLinesTextField,
                    textFieldControlr: textFieldControlrMethod,
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
    required int isSelected,
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
                GetBuilder<CreateNewRequestController>(builder: (_) {
              return Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.r),
                ),
                value: isSelected == 1 ? true : false,
                onChanged: (value) {
                  //
                  //

                  //
                  changingMethod();
                  //
                },
              );
            }),
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

  //

  void buidlDialogChoseItem({
    required String titleDialog,
    required String textToCompare,
    required String typeMethod,
    double? heightDialog,
    required List<String> listString,
  }) {
    //
    Get.defaultDialog(
        //
        //
        title: titleDialog,
        contentPadding: EdgeInsets.zero,
        titleStyle: TextStyle(
          fontSize: 16.sp,
          color: AppColors.textblackLight,
          fontFamily: AppFonts.almaraiBold,
        ),
        //
        content: SizedBox(
          // color: Colors.red,
          height: heightDialog != null ? heightDialog.h : 170.h,
          width: 350.w,
          child: Column(
            children: [
              //
              SizedBox(
                height: 10.h,
              ),
              // Divider
              const Divider(
                height: 0,
                color: AppColors.textblackLight,
              ),

              // ---------

              GetBuilder<CreateNewRequestController>(builder: (_) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: listString.length,
                    itemBuilder: (context, index) {
                      //
                      final item = listString[index];
                      //
                      return InkWell(
                        onTap: () {
                          //
                          //
                          if (typeMethod ==
                              AppStringtext.toothStateFieldAddTeethScrn) {
                            //

                            _createNewRequestController
                                .choseToothStateMethod(item);
                            //
                          } else if (typeMethod ==
                              AppStringtext.typeProductFieldAddTeethScrn) {
                            //
                            _createNewRequestController
                                .choseTpeProductMethod(item);

                            //
                          }
                          // Back
                          Get.back();
                          //
                          // Change Payment Text
                        },
                        child: Container(
                          // height: 100,
                          color: textToCompare == item
                              ? AppColors.purpleMainColor
                              : null,
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
                                item,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: textToCompare == item
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
                    });
              }),
            ],
          ),
        )
        // End Dialog
        );

    // End Method
  }

  // =========================================================

  void buildDialogChoseMaleFemale() {
    //
    Get.defaultDialog(
        //
        //
        title: '',
        contentPadding: EdgeInsets.zero,
        titleStyle: TextStyle(
          fontSize: 16.sp,
          color: AppColors.textblackLight,
          fontFamily: AppFonts.almaraiBold,
        ),
        //
        content: SizedBox(
          // color: Colors.red,
          height: 90.h,
          width: 350.w,
          child: GetBuilder<CreateNewRequestController>(builder: (context) {
            return Column(
              children: [
                // Divider
                const Divider(
                  height: 0,
                  color: AppColors.textblackLight,
                ),

                // ---------
                buildFieldMaleFemaleSection(
                  colorMainSection:
                      _createNewRequestController.genderTextScrn == 'ذكر'
                          ? AppColors.purpleMainColor
                          : null,
                  colorTextSection:
                      _createNewRequestController.genderTextScrn == 'ذكر'
                          ? AppColors.backGroundAndTextWhite
                          : AppColors.textblackLight,
                  textSection: 'ذكر',
                  onTapMethod: () {
                    //
                    _createNewRequestController.changeGenderTextMethod('ذكر');
                    //
                    Get.back();
                    //
                  },
                ),
                // ---------
                buildFieldMaleFemaleSection(
                  colorMainSection:
                      _createNewRequestController.genderTextScrn == 'انثى'
                          ? AppColors.purpleMainColor
                          : null,
                  colorTextSection:
                      _createNewRequestController.genderTextScrn == 'انثى'
                          ? AppColors.backGroundAndTextWhite
                          : AppColors.textblackLight,
                  textSection: 'انثى',
                  onTapMethod: () {
                    //
                    _createNewRequestController.changeGenderTextMethod('انثى');
                    //
                    Get.back();
                    //
                  },
                ),
              ],
            );
          }),
        )
        // End Dialog
        );

    // End Method Show Dialog
  }

  buildFieldMaleFemaleSection({
    Color? colorMainSection,
    required Color colorTextSection,
    required String textSection,
    required void Function()? onTapMethod,
  }) {
    return InkWell(
      onTap: onTapMethod,
      child: Container(
        // height: 100,
        color: colorMainSection,
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
              textSection,
              style: TextStyle(
                fontSize: 16.sp,
                color: colorTextSection,
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
  }

  String returnImage({
    required String numbrimage,
    required String toothImageWhite,
    required String toothImageOrange,
    required String toothImageGreen,
    required String toothImageRed,
  }) {
    //
    return _createNewRequestController
                .returnStateToothAccordingToGroup(numbrimage) ==
            'good'
        ? toothImageGreen
        : _createNewRequestController
                    .returnStateToothAccordingToGroup(numbrimage) ==
                'bad'
            ? toothImageOrange
            : _createNewRequestController
                        .returnStateToothAccordingToGroup(numbrimage) ==
                    'خطر'
                ? toothImageRed
                : toothImageWhite;
    // end Return Image
  }

  void buildDialogErrorMessage({
    required String titleMessage,
    required String bodyMessage,
  }) {
    Get.defaultDialog(
        title: titleMessage,
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(top: 15.h),
        titleStyle: TextStyle(
          fontSize: 18.sp,
          color: AppColors.redCancel,
          fontFamily: AppFonts.almaraiExtraBold,
        ),
        content: Column(
          children: [
            //
            SizedBox(
              height: 10.h,
            ),
            //
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                bodyMessage,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.textblackLight,
                  fontFamily: AppFonts.almaraiRegular,
                ),
              ),
            ),

            // Btn
            // ===============
            InkWell(
              //
              onTap: () {
                //
                Get.back();
                //
              },

              //
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                height: 50.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    color: AppColors.purpleMainColor,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    'موافق',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.whiteItemListOrderBackground,
                      fontFamily: AppFonts.almaraiRegular,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));

    // end method Dialog Error Message
  }
}
