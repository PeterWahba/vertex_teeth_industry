import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/animation/dots_loading.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/widgets/custom_textfield_outline.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/functions/methods_widgets.dart';
import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../controller/list_order_controller/create_new_request_controlr.dart';
import '../../../controller/list_order_controller/details_order_vertex_controlr.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';

class RejectOrderMessageScreen extends StatelessWidget {
  RejectOrderMessageScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();
  //
  final CreateNewRequestController _createNewRequestController = Get.find();

  //
  //
  final DetailsOrderVertexController _detailsOrderVertexController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
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
                          // if (_navBottomController.isHomeScrn) {
                          //
                          // _navBottomController
                          //     .changeCurrnentIndexListOrderScreen(3);
                          if (_navBottomController.isHomeScrn == 1) {
                            //
                            _navBottomController
                                .changeCurrnentIndexHomeScreen(1);
                          } else {
                            _navBottomController
                                .changeCurrnentIndexListOrderScreen(3);
                          }
                          // }
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
              SizedBox(
                height: 24.h,
              ),

              //

              Container(
                margin: EdgeInsets.only(right: 22.w, left: 35.w),
                child: Text(
                  AppStringtext.rejectReasonTitleDetailsOrderVertexScrn,
                  maxLines: 10,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 20.sp,
                    height: 1.45,
                    color: AppColors.greyCreateNewRequesText,
                    fontFamily: AppFonts.almaraiBold,
                  ),
                ),
              ),

              //
              SizedBox(
                height: 30.h,
              ),

              //
              Container(
                // height: 56.h,
                margin: EdgeInsets.symmetric(horizontal: 22.w),
                child: CustomTextfieldOutLineProduct(
                  showSuffix: false,
                  showPrefix: false,
                  // hieghtTextField: 56.h
                  topPaddingContent: 15.h,
                  leftPaddingContent: 10.w,
                  botomPaddingContent: 10.h,
                  minLines: 2,
                  maxLines: 10,
                  textFieldControlr:
                      _detailsOrderVertexController.messageRejectController,
                  // hintText: AppStringtext.rejectReasonDetailsOrderVertexScrn,
                  hintText: '',
                ),
              ),

              //
              GetBuilder<DetailsOrderVertexController>(builder: (_) {
                return AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  crossFadeState: _detailsOrderVertexController.status.isError
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Container(
                    margin: EdgeInsets.symmetric(vertical: 30.h),
                    alignment: Alignment.center,
                    child: Text(
                      _detailsOrderVertexController.status.errorMessage ?? '',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.redCancel,
                        fontFamily: AppFonts.almaraiRegular,
                      ),
                    ),
                  ),

                  //
                  secondChild: Container(),
                );
              }),

              //
              SizedBox(
                height: 30.h,
              ),

              GetBuilder<DetailsOrderVertexController>(builder: (_) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: InkWell(
                    onTap: () async {
                      //
                      await _detailsOrderVertexController
                          .rejectOrderWithMessageMethod();
                      //
                      if (_detailsOrderVertexController.status.isSuccess) {
                        //
                        // _navBottomController
                        //     .changeCurrnentIndexListOrderScreen(3);
                        if (_navBottomController.isHomeScrn == 1) {
                          //
                          _navBottomController.changeCurrnentIndexHomeScreen(1);
                        } else {
                          _navBottomController
                              .changeCurrnentIndexListOrderScreen(3);
                        }
                        //
                        //
                        MethodsWidgetClass.snackBarMessageGetX(
                          titleSnack: 'نجاح',
                          messageSnack: '',
                          messageRow: 'تم الارسال',
                          colorTextTitle: AppColors.greenColor,

                          // colorTextBody: AppColors.redCancel,
                        );

                        //

                  
                        //
                        //
                        await _detailsOrderVertexController
                            .getDetailsOrderVertexMethod(
                                _detailsOrderVertexController.idOrderCont);
                        //
                        _createNewRequestController.onInit();
                        //
                        //
                      }

                      //
                    },

                    //

                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,

                    //
                    child: ZoomTapAnimation(
                      child: Container(
                        width: double.infinity,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: AppColors.purpleMainColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        alignment: Alignment.center,
                        child: _detailsOrderVertexController.status.isLoading
                            ? const StaggeredDotsWaveAnimation(
                                size: 30,
                                color: AppColors.whiteItemListOrderBackground)
                            : Text(
                                'إرسال',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColors.backGroundAndTextWhite,
                                  fontFamily: AppFonts.almaraiBold,
                                ),
                              ),
                      ),
                    ),
                  ),
                );
              }),
            ], // End Children List View
          ),
        ),
      ),
    );
  }
}
