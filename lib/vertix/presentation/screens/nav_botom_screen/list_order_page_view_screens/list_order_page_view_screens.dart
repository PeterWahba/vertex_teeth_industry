import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/details_order_vertex_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/functions/methods_utls.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../../core/functions/methods_widgets.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import '../../../widgets/custom_textfield_outline.dart';
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
  final DetailsOrderVertexController _detailsOrderVertexController = Get.find();
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
          //  TextField Search Field
          // ==============================================
          // ==============================================
          // ==============================================
          Container(
            height: 56.h,
            // width: 50,
            // color: Colors.green,
            margin: EdgeInsets.symmetric(horizontal: 22.w),
            child: CustomTextfieldOutLineProduct(
              onChangedM: (value) {
                //   //
                _createNewRequestController.searchInsideListOrderVertixOriginal(
                    letterIdName: value, stateOrder: null);
                //
              },
              hintText: AppStringtext.hintTextSearchHomeScrn,
              showPrefix: false,
              showSuffix: false,
              colorHintText: AppColors.greyTextHint,
              widgetPrefixIcon: Container(
                margin: EdgeInsets.only(top: 18.h, bottom: 18.h, right: 16.w),
                height: 20.h,
                width: 20.w,
                child: SvgPicture.asset(AppImages.searchHomeScren),
              ),
            ),
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
                            ? MethodsClassUTls.colorItemListOrder(
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
                              return InkWell(
                                //
                                onTap: () async {
                                  //  should call the Method that get Details of Order
                                  //
                                  _detailsOrderVertexController
                                      .getDetailsOrderVertexMethod(
                                          itemOrder.idOrder);
                                  _navBottomController
                                      .changeCurrnentIndexListOrderScreen(3);
                                },

                                //
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                //
                                child: ItemOrderWidgetClass(
                                  numberindex: index,
                                  isPaid: itemOrder.isPaid,
                                  totalMoney: itemOrder.totalAmount,
                                  idOrder: itemOrder.idOrder,
                                  namePatien: itemOrder.patientName,
                                  timeOrder: MethodsClassUTls.convertToTimeAgo(
                                      itemOrder.postingTime),
                                  stateText: MethodsClassUTls
                                      .translateStateOrderToArabic(
                                          itemOrder.orderState),
                                  colorBox: MethodsClassUTls.colorItemListOrder(
                                      itemOrder.orderState),
                                  colorState:
                                      MethodsClassUTls.colorItemListOrder(
                                          itemOrder.orderState),
                                ),
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
}
