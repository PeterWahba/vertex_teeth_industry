import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../widgets/add_order_details_patient.dart/custom_widget_dialog_list.dart';
import '../../../widgets/custom_textfield_outline.dart';

class CreateNewRequestScreenOri extends StatelessWidget {
  CreateNewRequestScreenOri({super.key});
  //
  final NavBottomController _navBottomController = Get.find();
  //
  final CreateNewRequestController _createNewRequestController = Get.find();

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
              //
              //
              Container(
                  // height: 44.h,
                  // width: 50,
                  // color: Colors.amber,
                  ),

              //
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
                          _navBottomController
                              .changeCurrnentIndexListOrderScreen(0);
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
                                style: TextStyle(
                                    color: AppColors.purpleMainColor)),

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
                // keyboardType: TextInputType.text,
                controllerTextField:
                    _createNewRequestController.patientNameController,
                focusNodetextField:
                    _createNewRequestController.patientFocusNode,
              ),

              // //

              //
              GetBuilder<CreateNewRequestController>(builder: (_) {
                return buildTextAndFieldTextFormField(
                  titleField: AppStringtext.genderAddOrderPahseOneScrn,
                  keyboardType: TextInputType.text,
                  isReadOnly: '',
                  initText: _createNewRequestController.genderTextScrn,
                  onTapInkWell: () {
                    //
                    // FocusScope.of(context).unfocus();
                    _createNewRequestController.patientFocusNode.unfocus();
                    _createNewRequestController.ageFocusNode.unfocus();
                    _createNewRequestController.noteFocusNode.unfocus();
                    //
                    //
                    // Show Dialog to chose gender
                    //
                    buildDialogChoseMaleFemale();
                    //
                  },
                );
              }),

              //
              /*
                    
                */

              buildTextAndFieldTextFormField(
                titleField: AppStringtext.ageAddOrderPahseOneScrn,
                keyboardType: TextInputType.number,
                controllerTextField: _createNewRequestController.ageController,
                focusNodetextField: _createNewRequestController.ageFocusNode,
                inputFormattersCustomMethod: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                // botomPading: 0,
              ),

              //

              //
              buildTextAndFieldTextFormField(
                titleField: AppStringtext.noteAddOrderPahseOneScrn,
                // keyboardType: TextInputType.text,
                controllerTextField: _createNewRequestController.noteController,
                focusNodetextField: _createNewRequestController.noteFocusNode,
                // botomPading: 0,
              ),

              //
              //
              GetBuilder<CreateNewRequestController>(builder: (_) {
                return buildTextAndFieldTextFormField(
                  titleField: AppStringtext.vita3DMasterOrderPahseOneScrn,
                  keyboardType: TextInputType.text,
                  aligmentTitleText: Alignment.centerLeft,
                  isReadOnly: '',
                  initText: _createNewRequestController.vita3DMasterText,
                  onTapInkWell: () {
                    //
                    // FocusScope.of(context).unfocus();
                    _createNewRequestController.patientFocusNode.unfocus();
                    _createNewRequestController.ageFocusNode.unfocus();
                    _createNewRequestController.noteFocusNode.unfocus();
                    //
                    //
                    // Show Dialog to chose gender
                    //
                    //
                    buildDialogChoseMaleFemale(
                        isList: '',
                        listStringCont:
                            _createNewRequestController.listVita3DMaster,
                        chosenText:
                            _createNewRequestController.vita3DMasterText,
                        onTapInkWellCont:
                            _createNewRequestController.changeVita3DMasterText);
                    //
                  },
                );
              }),

              //
              //
              GetBuilder<CreateNewRequestController>(builder: (_) {
                return buildTextAndFieldTextFormField(
                  titleField: AppStringtext.vitaClassicalOrderPahseOneScrn,
                  keyboardType: TextInputType.text,
                  aligmentTitleText: Alignment.centerLeft,
                  isReadOnly: '',
                  botomPading: 0,
                  initText: _createNewRequestController.vitaClassicalText,
                  onTapInkWell: () {
                    //
                    // FocusScope.of(context).unfocus();
                    _createNewRequestController.patientFocusNode.unfocus();
                    _createNewRequestController.ageFocusNode.unfocus();
                    _createNewRequestController.noteFocusNode.unfocus();
                    //
                    //
                    // Show Dialog to chose gender
                    //
                    buildDialogChoseMaleFemale(
                        isList: '',
                        listStringCont:
                            _createNewRequestController.listVitaClassical,
                        chosenText:
                            _createNewRequestController.vitaClassicalText,
                        onTapInkWellCont: _createNewRequestController
                            .changeVitaClassicalText);
                    //
                  },
                );
              }),

              //
              //
              SizedBox(
                height: 30.h,
              ),

              // ==================
              //
              Container(
                margin: EdgeInsets.only(right: 41.w),
                child: Text(
                  AppStringtext.isFileDigitalAddOrderPahseOneScrn,
                  style: TextStyle(
                    color: AppColors.textblackLight,
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                  ),
                ),
              ),

              // Spacing
              // ========================
              SizedBox(
                height: 5.h,
              ),
              //
              GetBuilder<CreateNewRequestController>(builder: (_) {
                return Container(
                  margin: EdgeInsets.only(right: 35.w),
                  alignment: Alignment.centerRight,
                  child: Checkbox(
                    //
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    value: _createNewRequestController.isFileDigital == 1
                        ? true
                        : false,

                    onChanged: (value) {
                      //
                      //
                      _createNewRequestController.changeIsDigitalValue();
                      //
                      //
                    },
                  ),
                );
              }),

              // Spacing
              // ========================
              Container(
                  // color: Colors.amber,
                  // height: 50.h,
                  ),

              // Show Error Message
              //
              GetBuilder<CreateNewRequestController>(
                builder: (context) {
                  return Container(
                    height: 40.h,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(
                        bottom: _createNewRequestController.errorMessage != ''
                            ? 25.h
                            : 0.h,
                        left: 20.w,
                        right: 20.w),
                    //
                    alignment: Alignment.center,
                    child:
                        //  Center(

                        //   child:
                        AnimatedCrossFade(
                      firstChild: Text(
                        _createNewRequestController.errorMessage,
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
                      crossFadeState:
                          _createNewRequestController.errorMessage != ''
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                    ),
                    // ),
                  );
                },
              ),

              //
              // Btn Next
              // ========================
              ZoomTapAnimation(
                child: InkWell(
                  //
                  onTap: () {
                    //
                    bool checkFields =
                        _createNewRequestController.checkAllFieldsFilled();

                    //
                    if (checkFields) {
                      //
                      FocusScope.of(context).unfocus();
                      //
                      //
                      _navBottomController
                          .changeCurrnentIndexListOrderScreen(2);
                    }
                    //
                  },
                  //

                  child: Container(
                    height: 56.h,
                    width: 384.w,
                    margin: EdgeInsets.symmetric(horizontal: 22.w),
                    decoration: BoxDecoration(
                        color: AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Center(
                      child: Text(
                        AppStringtext.nextBtnAddOrderPahseOneScrn,
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

              //
              // Spacing
              // ========================
              Container(
                // color: Colors.amber,
                height: 30.h,
              ),

              //

              // End Children Main Column
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
    String? isReadOnly,
    String? initText,
    AlignmentGeometry aligmentTitleText = Alignment.centerRight,
    List<TextInputFormatter>? inputFormattersCustomMethod,
    TextEditingController? controllerTextField,
    FocusNode? focusNodetextField,
    TextInputType? keyboardType,
  }) {
    //
    return Padding(
      padding: EdgeInsets.only(left: 41.w, right: 41.w, bottom: botomPading.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //
          Align(
            alignment: aligmentTitleText,
            child: SizedBox(
              height: 20.h,
              child: Text.rich(
                textAlign: TextAlign.start,
                TextSpan(
                  style: TextStyle(
                    fontFamily: AppFonts.almaraiRegular,
                    fontSize: 16.sp,
                    color: AppColors.textblackLight,
                  ),
                  children: [
                    //
                    aligmentTitleText == Alignment.centerRight
                        ? const TextSpan()
                        : const TextSpan(
                            text: '   *   ',
                            style: TextStyle(color: AppColors.redCancel),
                          ),

                    TextSpan(
                      text: titleField,
                    ),
                  ],
                ),
              ),
              //  Text(
              //   titleField,
              //   style: TextStyle(
              //       fontSize: 16.sp,
              //       fontFamily: AppFonts.almaraiRegular,
              //       color: Colors.black),
              // ),
            ),
          ),

          //
          SizedBox(
            height: 11.h,
          ),

          //
          SizedBox(
            height: 48.h,
            child: InkWell(
              onTap: onTapInkWell,

              //
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: isReadOnly != null
                  ? Container(
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
                    )
                  : CustomTextfieldOutLineProduct(
                      inputFormattersCustom: inputFormattersCustomMethod,
                      hintText: '',
                      focusNodeC: focusNodetextField,
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

  void buildDialogChoseMaleFemale({
    String? isList,
    List<String>? listStringCont,
    String? chosenText,
    void Function(String value)? onTapInkWellCont,
  }) {
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
          height: isList != null ? 180.h : 90.h,
          width: 350.w,
          child: GetBuilder<CreateNewRequestController>(builder: (context) {
            return isList != null
                ? CustomWidgetDialogListAddOrderPhaseTwoPatientDetails(
                    listString: listStringCont!,
                    chosenText: chosenText ?? '',
                    onTapInkWell: onTapInkWellCont,
                  )
                : Column(
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
                          _createNewRequestController
                              .changeGenderTextMethod('ذكر');
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
                          _createNewRequestController
                              .changeGenderTextMethod('انثى');
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
}
