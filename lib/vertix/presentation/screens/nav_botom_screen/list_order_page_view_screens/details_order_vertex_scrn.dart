import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/functions/methods_utls.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/details_order_vertex_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../widgets/custom_details_order_vertex_teeth_selected_order.dart';
import '../../../widgets/custom_textfield_outline.dart';
import '../../../widgets/lit_order_and_add_teeth/custom_division_add_details_order.dart';
import '../../../widgets/shimmer/loading_details_order_vertex.dart';

class DetailsOrderVertexScreen extends StatelessWidget {
  DetailsOrderVertexScreen({super.key});
  //
  final NavBottomController _navBottomController = Get.find();
  //

  //
  final DetailsOrderVertexController _detailsOrderVertexController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: true,
      //
      body:
          // SafeArea(
          // child:
          SafeArea(
        child: SizedBox(
          // color: Colors.amber,
          height: 831.h,
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 20.h,
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

                    //
                    const Spacer(),
                    //

                    ZoomTapAnimation(
                      child: InkWell(
                        //
                        //
                        onTap: () {
                          //
                          print('\n');
                          print('Come Back  Btn of Details Order');
                          print('\n');
                          //
                          if (_navBottomController.isHomeScrn == 1) {
                            //
                            print('\n');
                            print(
                                'Come Back  Btn of Details Order To Home Screen');
                            print('\n');
                            //
                            _navBottomController
                                .changeCurrnentIndexHomeScreen(0);
                          } else {
                            //
                            print('\n');
                            print(
                                'Come Back  Btn of Details Order To List Order Screen');
                            print('\n');
                            //
                            _navBottomController
                                .changeCurrnentIndexListOrderScreen(0);
                          }
                          //
                        },
                        //
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

              // Title And fields
              // ===============================================================
              // ===============================================================
              // ===============================================================

              //

              _detailsOrderVertexController.obx(
                (state) => buildMainWidget(context),
                onLoading: LoadingDetailsOrderVertexItemScreen(
                  greyColorShimmer: AppColors.greyShimmer,
                ),
              )
            ],
          ),
        ),
      ),
      // ),

      // End Scaffold
    );
  }

  buildTextAndFieldTextFormField({
    required String titleField,
    void Function()? onTapInkWell,
    double botomPading = 15,
    double rightPading = 41,
    double leftPading = 41,
    double? widthTitle,
    double widthFieldWithInitValue = double.infinity,
    double heightFieldWithInitValue = 48,
    String? isReadOnly,
    String? initText,
    AlignmentGeometry alignmentTitle = Alignment.centerRight,
    List<TextInputFormatter>? inputFormattersCustomMethod,
    TextEditingController? controllerTextField,
    TextInputType? keyboardType,
  }) {
    //
    return Padding(
      padding: EdgeInsets.only(
          left: leftPading.w, right: rightPading.w, bottom: botomPading.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //
          Container(
            alignment: alignmentTitle,
            // color: Colors.amber,
            width: widthTitle,
            // width: double.infinity,
            child: SizedBox(
              height: 20.h,
              // width: 70.w,
              child: Text(
                titleField,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: Colors.black),
              ),
            ),
          ),

          //
          SizedBox(
            height: 11.h,
          ),

          //
          SizedBox(
            height: heightFieldWithInitValue.h,
            child: InkWell(
              onTap: onTapInkWell,

              //
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: isReadOnly != null
                  ? Container(
                      height: heightFieldWithInitValue.h,
                      padding: EdgeInsets.only(
                          right: 10.w, left: 10.w, top: 10.h, bottom: 5.h),
                      width: widthFieldWithInitValue.w,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyStrokTextField,
                          ),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
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
                    )
                  : CustomTextfieldOutLineProduct(
                      inputFormattersCustom: inputFormattersCustomMethod,
                      hintText: '',
                      showPrefix: false,
                      showSuffix: false,
                      contentPaddingField: 0,
                      initText: initText,
                      isReadOnly: isReadOnly,
                      keyboardType: keyboardType,
                      textFieldControlr: controllerTextField,
                    ),
            ),
          )
          // End Children Column Field
        ],
      ),
    );
    // End Method Text && TExtFormField
  }

  // void buildDialogChoseMaleFemale() {
  //   //
  //   Get.defaultDialog(
  //       //
  //       //
  //       title: '',
  //       contentPadding: EdgeInsets.zero,
  //       titleStyle: TextStyle(
  //         fontSize: 16.sp,
  //         color: AppColors.textblackLight,
  //         fontFamily: AppFonts.almaraiBold,
  //       ),
  //       //
  //       content: SizedBox(
  //         // color: Colors.red,
  //         height: 90.h,
  //         width: 350.w,
  //         child: const Column(
  //           children: [
  //             // Divider
  //             Divider(
  //               height: 0,
  //               color: AppColors.textblackLight,
  //             ),

  //           ],
  //         ),
  //       )
  //       // End Dialog
  //       );

  //   // End Method Show Dialog
  // }

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

  buildMainWidget(BuildContext context) {
    //
    return Column(
      children: [
        //
        //
        Container(
            // height: 44.h,
            // width: 50,
            // color: Colors.amber,
            ),

        //

        //
        // Spacing
        // ========================
        SizedBox(
          height: 24.h,
        ),

        // Texts Title
        // ===============================================================
        // ===============================================================
        // ===============================================================
        //
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22.w),
          height: 31.h,
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
                        text: AppStringtext.informationDetailsOrderVertexScrn,
                      ),

                      TextSpan(
                          text: AppStringtext.askDetailsOrderVertexScrn,
                          style: TextStyle(color: AppColors.purpleMainColor)),

                      // TextSpan(
                      //   text: AppStringtext
                      //       .crateNewRequestPartThreeAddOrderPahseOneScrn,
                      // ),

                      //
                    ]),
              ),

              // SizedBox(
              //   width: 10.w,
              // ),
              const Spacer(),

              //

              Container(
                height: 31.h,
                padding: EdgeInsets.symmetric(horizontal: 41.w, vertical: 2.h),
                decoration: BoxDecoration(
                  // color: AppColors.purpleMainColor,
                  color: MethodsClassUTls.colorItemListOrder(
                      _detailsOrderVertexController
                              .detailsOrderVertexEntities?.orderState ??
                          'None'),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    // 'Pending Approval',

                    MethodsClassUTls.translateStateOrderToArabic(
                        _detailsOrderVertexController
                                .detailsOrderVertexEntities?.orderState ??
                            'None'),
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.whiteItemListOrderBackground),
                  ),
                ),
              ),

              //

              // End Children Row Texts
            ],
          ),
        ),

        //
        //
        //
        // Spacing
        // ========================
        SizedBox(
          height: 37.h,
        ),

        // Fields
        // ==============================================================

        //
        buildTextAndFieldTextFormField(
          titleField: AppStringtext.patientNameAddOrderPahseOneScrn,
          keyboardType: TextInputType.text,
          leftPading: 22,
          isReadOnly: '',
          initText: _detailsOrderVertexController
                  .detailsOrderVertexEntities?.patientName ??
              'None',
          onTapInkWell: () {},
        ),

        // //

        //

        Row(
          children: [
            //
            buildTextAndFieldTextFormField(
              titleField: AppStringtext.genderAddOrderPahseOneScrn,
              keyboardType: TextInputType.text,
              widthFieldWithInitValue: 173.w,
              leftPading: 0,
              isReadOnly: '',
              initText: _detailsOrderVertexController
                      .detailsOrderVertexEntities?.gender ??
                  'None',
              onTapInkWell: () {
                //
                FocusScope.of(context).unfocus();
                //
                //
                // Show Dialog to chose gender
                //
                // buildDialogChoseMaleFemale();
                //
              },
            ),

            //
            SizedBox(
              width: 19.w,
            ),
            //
            buildTextAndFieldTextFormField(
              titleField: AppStringtext.ageAddOrderPahseOneScrn,
              keyboardType: TextInputType.text,
              widthFieldWithInitValue: 173.w,
              leftPading: 0,
              rightPading: 0,
              isReadOnly: '',
              initText: _detailsOrderVertexController
                      .detailsOrderVertexEntities?.age
                      .toString() ??
                  'None',
              onTapInkWell: () {
                //
                FocusScope.of(context).unfocus();
                //
                //
                // Show Dialog to chose gender
                //
                // buildDialogChoseMaleFemale();
                //
              },
            ),

            //
          ], //end Row children
        ),

        //
        //
        buildTextAndFieldTextFormField(
            titleField: AppStringtext.totalMoneyDetailsOrderVertexScrn,
            // keyboardType: TextInputType.text,
            leftPading: 22,
            isReadOnly: '',
            initText: MethodsClassUTls.formatNumber(
                number: _detailsOrderVertexController
                        .detailsOrderVertexEntities?.totalAmount ??
                    0)),

        //
        //
        Row(
          children: [
            //
            buildTextAndFieldTextFormField(
              titleField: AppStringtext.orderDateDetailsOrderVertexScrn,
              keyboardType: TextInputType.text,
              widthFieldWithInitValue: 173.w,
              leftPading: 0,
              isReadOnly: '',
              initText: _detailsOrderVertexController
                      .detailsOrderVertexEntities?.postingDate ??
                  'None',
              onTapInkWell: () {
                //
                // FocusScope.of(context).unfocus();
                //
                //
                // Show Dialog to chose gender
                //
                // buildDialogChoseMaleFemale();
                //
              },
            ),

            //
            SizedBox(
              width: 19.w,
            ),
            //
            //
            Text(
              AppStringtext.isFileDigitalAddOrderPahseOneScrn,
              style: TextStyle(
                color: AppColors.textblackLight,
                fontSize: 16.sp,
                fontFamily: AppFonts.almaraiRegular,
              ),
            ),

            //

            Container(
              // margin: EdgeInsets.only(right: 35.w),
              alignment: Alignment.centerRight,
              child: Checkbox(
                //
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                value: _detailsOrderVertexController
                                .detailsOrderVertexEntities?.isDigital ==
                            null ||
                        _detailsOrderVertexController
                                .detailsOrderVertexEntities!.isDigital ==
                            0
                    ? false
                    : true,

                onChanged: (val) {},
              ),
            ),

            //
          ], //end Row children
        ),

        //
        //
        buildTextAndFieldTextFormField(
          titleField: AppStringtext.noteAddOrderPahseOneScrn,
          isReadOnly: '',
          heightFieldWithInitValue:
              _detailsOrderVertexController.detailsOrderVertexEntities?.notes ==
                      null
                  ? 60
                  : _detailsOrderVertexController
                                  .detailsOrderVertexEntities?.notes !=
                              null &&
                          _detailsOrderVertexController
                                  .detailsOrderVertexEntities!.notes!.length <
                              100
                      ? 100
                      : 150,
          // heightFieldWithInitValue:
          //     'dlskljksnls.fjnklbds,.sjbh.vd,,.vb,.jhbv.djd.hjbdhj.dbv,bdhmns.djhvb.vbjhsjknsdjkbv,jhsbdhj'
          //                     .length *
          //                 1 <
          //             100
          //         ? 100
          //         : 150,
          initText:
              // 'dlskljksnls.fjnklbds,.sjbh.vd,jvhdbvdbv,.vb,.jhbv.djd.hjbdhj.dbv,bdhmns.djhvb.vbjhsjknsdjkbv,jhsbdhj',
              _detailsOrderVertexController.detailsOrderVertexEntities?.notes ??
                  'لا يوجد ملاحظات',
          botomPading: 0,
          leftPading: 22,
        ),

        //
        SizedBox(
          height: 19.h,
        ),
        //
        //

        Row(
          children: [
            //
            buildTextAndFieldTextFormField(
              titleField: AppStringtext.vitaClassicalOrderPahseOneScrn,
              alignmentTitle: Alignment.centerLeft,
              keyboardType: TextInputType.text,
              widthFieldWithInitValue: 173.w,
              widthTitle: 173.w,
              leftPading: 0,
              isReadOnly: '',
              initText: _detailsOrderVertexController
                      .detailsOrderVertexEntities?.vitaClassical ??
                  'لا يوجد',
              onTapInkWell: () {
                //
                // FocusScope.of(context).unfocus();
                //
                //
                // Show Dialog to chose gender
                //
                // buildDialogChoseMaleFemale();
                //
              },
            ),

            //
            SizedBox(
              width: 19.w,
            ),
            //
            buildTextAndFieldTextFormField(
              titleField: AppStringtext.vita3DMasterOrderPahseOneScrn,
              alignmentTitle: Alignment.centerLeft,
              keyboardType: TextInputType.text,
              widthTitle: 173.w,
              widthFieldWithInitValue: 173.w,
              leftPading: 0,
              rightPading: 0,
              isReadOnly: '',
              initText: _detailsOrderVertexController
                      .detailsOrderVertexEntities?.vita3DMaster ??
                  'لا يوجد',
              onTapInkWell: () {
                //
                // FocusScope.of(context).unfocus();
                //
                //
                // Show Dialog to chose gender
                //
                // buildDialogChoseMaleFemale();
                //
              },
            ),

            //
          ], //end Row children
        ),

        //
        //
        // buildTextAndFieldTextFormField(
        //     titleField: AppStringtext.nDShadeGuideFieldAddTeethScrn,
        //     alignmentTitle: Alignment.centerLeft,
        //     // keyboardType: TextInputType.text,
        //     leftPading: 22,
        //     isReadOnly: '',
        //     initText: _detailsOrderVertexController
        //             .detailsOrderVertexEntities?.ndShadeGuide ??
        //         'لا يوجد'),
        //
        SizedBox(
          height: 30.h,
        ),
        //
        //
        Padding(
          padding: EdgeInsets.only(right: 41.w),
          child: Align(
            alignment: Alignment.centerRight,
            //
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: AppFonts.almaraiBold,
                  color: AppColors.textblackLight,
                ),
                children: const [
                  //
                  TextSpan(
                      text: AppStringtext.detailsTextDetailsOrderVertexScrn),
                  //
                  TextSpan(
                      text: AppStringtext.askDetailsOrderVertexScrn,
                      style: TextStyle(color: AppColors.purpleMainColor)),
                ],
              ),
            ),
          ),
        ),

        //
        SizedBox(
          height: 20.h,
        ),
        //
        Divider(
          color: Colors.black,
          height: 2.h,
        ),
        //
        // Here write The division
        Directionality(
          textDirection: TextDirection.ltr,
          child: CustomDivisionAddDetailsOrder(
            isSelectedPFMLaser: 1,
            isSelectedEMaxPress: 1,
            isSelectedEMaxSuprem: 1,
            isSelectedInlayAndOnlay: 1,
            isSelectedTempoary: 1,
            isSelectedZicronFacingEMax: 1,
            isSelectedZicronFullAnatomy: 1,
            isSelectedZicronLayered: 1,
            isSelectedZicronPrettauAnterior: 1,
            changingMethodEMaxPress: () {},
            changingMethodEMaxSuprem: () {},
            changingMethodInlayAndOnlay: () {},
            changingMethodPFMLaser: () {},
            changingMethodTempoary: () {},
            changingMethodZicronFacingEMax: () {},
            changingMethodZicronFullAnatomy: () {},
            changingMethodZicronLayered: () {},
            changingMethodZicronPrettauAnterior: () {},
            //
            //
            activeColorEMaxPress: AppColors.eMaxPress,
            activeColorEMaxSuprem: AppColors.eMaxSuprem,
            activeColorInlayAndOnlay: AppColors.inlayAndonlay,
            activeColorPFMLaser: AppColors.pfmLaser,
            activeColorTempoary: AppColors.temporary,
            activeColorZicronFacingEMax: AppColors.zirconfacingEmax,
            activeColorZicronLayered: AppColors.zirconLayered,
            activeColorZicronPrettauAnterior: AppColors.zirconPrettauAnterior,
            activeColorisSelectedZicronFullAnatomy: AppColors.zirconFullAnatomy,
          ),
        ),
        //
        SizedBox(
          height: 13.h,
        ),
        //
        //
        Divider(
          color: Colors.black,
          height: 2.h,
        ),
        //
        SizedBox(
          height: 30.h,
        ),
        //
        CustomDetailsOrderVertexTeethSelectedOrder(),

        //
        //
        SizedBox(
          height: 30.h,
        ),

        // ==================
        // 'Case Rejected'

        _detailsOrderVertexController
                        .detailsOrderVertexEntities?.rejectedReason ==
                    null &&
                _detailsOrderVertexController
                        .detailsOrderVertexEntities?.orderState ==
                    'Finished Delivered'
            ? Align(
                alignment: AlignmentDirectional.centerStart,
                child: ZoomTapAnimation(
                  child: InkWell(
                    //
                    onTap: () {
                      //
                      //
                      // _navBottomController
                      //     .changeCurrnentIndexListOrderScreen(4);
                      if (_navBottomController.isHomeScrn == 1) {
                        //
                        _navBottomController.changeCurrnentIndexHomeScreen(2);
                      } else {
                        _navBottomController
                            .changeCurrnentIndexListOrderScreen(4);
                      }
                      //
                      // Get.defaultDialog(
                      //     title:
                      //         AppStringtext.rejectReasonDetailsOrderVertexScrn,
                      //     titleStyle: TextStyle(
                      //         fontSize: 18.sp,
                      //         fontFamily: AppFonts.almaraiBold),
                      //     content: const CustomTextfieldOutLineProduct(
                      //         showSuffix: false,
                      //         showPrefix: false,
                      //         hintText: AppStringtext
                      //             .hintTextRejectReasonDetailsOrderVertexScrn)
                      //     //
                      //     );
                    },
                    //
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    //
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 22.w),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 20.w, vertical: 14.h),
                      decoration: BoxDecoration(
                        color: AppColors.redRejectOrder,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        AppStringtext.btnRejectOrderDetailsOrderVertexScrn,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: AppFonts.almaraiBold,
                          color: AppColors.whiteItemListOrderBackground,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),

        //

        SizedBox(
          height: 30.h,
        ),

        // End Children Main Column
      ],
    );
  } // end Main Widget Method

  //
} // End class
