import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/utils/methods_utls.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../../core/widgets/methods_widgets.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import '../../../widgets/error_state.dart';
import '../../../widgets/item_order_widget.dart';
import '../../../widgets/shimmer/loading_shimmer.dart';

class ListOrderPageViewScreen extends StatelessWidget {
  ListOrderPageViewScreen({super.key});

  //
  //
  final NavBottomController _navBottomController = Get.find();
  //
  final CreateNewRequestController _createNewRequestController = Get.find();
  //
  //

  //

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: false,
      body:
          // SafeArea(

          // child:
          Column(
        children: [
          Container(
            height: 34.h,
            // width: 50,
            // color: Colors.amber,
          ),

          //
          Container(
            height: 25.h,
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
                  child: InkWell(
                    //
                    onTap: () {
                      //
                      _navBottomController
                          .changeCurrnentIndexListOrderScreen(1);
                      //
                    },
                    //
                    child: Container(
                      height: 41.h,
                      width: 128.w,
                      decoration: BoxDecoration(
                        color: AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(8.r),
                        //
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //
                          SizedBox(
                              width: 75.w,
                              height: 18.h,
                              child: Text(
                                AppStringtext.addRequestListOrderScrn,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.almaraiBold,
                                  color: AppColors.backGroundAndTextWhite,
                                ),
                              )),

                          //
                          //  Spacing
                          //
                          SizedBox(
                            width: 4.w,
                          ),
                          //
                          SizedBox(
                            height: 15.h,
                            width: 15.w,
                            child:
                                SvgPicture.asset(AppImages.plustListOrderScrn),
                          ),

                          //
                          // End Children Row Btn
                        ],
                      ),
                    ),
                  ),
                ),
                //
                const Spacer(),
                //

                // End Children Row
              ],
            ),
          ),

          //
          Container(
            height: 21.h,
            // width: 50,
            // color: Colors.orange,
          ),

          //
          //  TextField
          Container(
            height: 56.h,
            // width: 50,
            // color: Colors.green,
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            child: buildTextField(),
          ),

          //
          //
          Container(
            height: 17.h,
            // color: Colors.red,
          ),
          //
          // Filter Division

          SizedBox(
            // color: Colors.blue,
            // margin: EdgeInsets.only(top: 17.h),
            height: 34.h,
            child: GetBuilder<CreateNewRequestController>(
                //
                builder: (_) {
              //
              return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                scrollDirection: Axis.horizontal,
                itemCount: _createNewRequestController.listSateOrder.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  //
                  final stateOrder =
                      _createNewRequestController.listSateOrder[index];
                  //
                  return //
                      InkWell(
                    //
                    onTap: _createNewRequestController.status.isLoading ||
                            _createNewRequestController.status.isError
                        ? () {
                            //
                          }
                        : () {
                            //
                            _createNewRequestController
                                .changeStateOrderDivsion(index);
                            //
                            _createNewRequestController
                                .searchInsideListOrderVertixOriginal(
                                    stateOrder: stateOrder.stateEnglish,
                                    letterIdName: null);

                            //
                          },

                    //
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                          top: 8.h, bottom: 9.h, right: 8.w, left: 8.w),
                      margin: EdgeInsets.only(right: 15.w),
                      decoration: BoxDecoration(
                        color: _createNewRequestController.stateOrderDivision ==
                                index
                            ? MethodsWidgetClass.colorItemListOrder(
                                stateOrder.stateArabic)
                            : Colors.transparent,
                        border: Border.all(
                          color:
                              _createNewRequestController.stateOrderDivision ==
                                      index
                                  ? Colors.transparent
                                  : AppColors.textblackLight,
                          //  MethodsWidgetClass.colorBorderOrderState(
                          // stateOrder),
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        stateOrder.stateArabic,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: AppFonts.almaraiBold,
                          color:
                              _createNewRequestController.stateOrderDivision ==
                                      index
                                  ? AppColors.backGroundAndTextWhite
                                  : AppColors.textblackLight,
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          //
          Container(
            // color: Colors.orange,
            height: 11.h,
          ),
          //

          //
          SizedBox(
            height: 592.h,

            // width: 50,
            // color: Colors.grey,
            //
            child: _createNewRequestController.obx(
              (state) => RefreshIndicator(
                //
                onRefresh: () async {
                  //
                  _createNewRequestController.onInit();
                },
                //
                color: AppColors.purpleMainColor,

                //
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: [
                    //
                    SizedBox(
                      height: 591.9.h,
                      child: CustomScrollView(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        slivers: [
                          //

                          //
                          SliverList.builder(
                            //
                            itemCount: _createNewRequestController
                                .listOrderVertixEntities.length,
                            //
                            itemBuilder: (context, index) {
                              //
                              final itemOrder = _createNewRequestController
                                  .listOrderVertixEntities[index];

                              //
                              return ItemOrderWidgetClass(
                                numberindex: index,
                                isPaid: itemOrder.isPaid,
                                totalMoney: itemOrder.totalAmount,
                                idOrder: itemOrder.idOrder,
                                namePatien: itemOrder.patientName,
                                timeOrder: MethodsClassUTls.convertToTimeAgo(
                                    itemOrder.postingTime),
                                stateText: _createNewRequestController
                                    .translateStateOrderToArabic(
                                        itemOrder.orderState),
                                colorBox: MethodsWidgetClass.colorItemListOrder(
                                    itemOrder.orderState),
                                colorState:
                                    MethodsWidgetClass.colorItemListOrder(
                                        itemOrder.orderState),
                              );

                              // End ItemBuilder
                            },
                            //

                            // End SliverList.Builder
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      height: 0.1.h,
                    )

                    //
                  ],
                ),
              ),

              //
              onLoading: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 7,
                itemBuilder: (_, index) {
                  //
                  return LoadingShimmerWidgetClass(
                    numberindex: index,
                    greyColorShimmer: AppColors.greyShimmer,
                  );
                },
              ),
              // onError
              onError: (error) => ErrorStateWidgetClass(
                onTapInkWell: () {
                  //
                  _createNewRequestController.onInit();
                },
                //
                errorText: error!,
                fontSizeError: 16.sp,
                colorTexterror: AppColors.redCancel,
              ),
            ),
          ),

          //
        ],
      ),
      // ),
    );
  }

  Widget buildTextField() {
    //
    return TextFormField(
      //
      onChanged: (value) {
        //
        _createNewRequestController.searchInsideListOrderVertixOriginal(
            letterIdName: value, stateOrder: null);
        //
      },

      //
      style: TextStyle(
        fontFamily: AppFonts.almaraiRegular,
        fontSize: 16.sp,
        height: 1.15,
        // color: AppColors.greyTextHint,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        // EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 10.w),

        //
        prefixIcon: Container(
          // color: Colors.amber,
          margin: EdgeInsets.only(top: 16.h, bottom: 18.h, right: 18.w),
          height: 20.h,
          width: 20.w,
          child: SvgPicture.asset(AppImages.searchHomeScren),
        ),

        //

        //
        hintText: AppStringtext.hintTextSearchHomeScrn,

        hintStyle: TextStyle(
            fontFamily: AppFonts.almaraiRegular,
            fontSize: 16.sp,
            height: 1.15,
            color: AppColors.greyTextHint),
        //
        errorBorder: OutlineInputBorder(
          // gapPadding: 56,

          borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          borderSide: const BorderSide(color: AppColors.colorRed),
        ),
        errorStyle: const TextStyle(fontFamily: AppFonts.almaraiRegular),
        border: OutlineInputBorder(
          // gapPadding: 56,
          borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          borderSide:
              const BorderSide(color: AppColors.greyStrokListOrderTextField),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          borderSide:
              const BorderSide(color: AppColors.greyStrokListOrderTextField),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
            borderSide:
                const BorderSide(color: AppColors.greyStrokListOrderTextField)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          borderSide: const BorderSide(color: AppColors.purpleMainColor),
        ),
      ),
      //
    );
    //
    // End Method
  }
}
