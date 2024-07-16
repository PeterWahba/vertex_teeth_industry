import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/detalis_payment_entry_item_contrlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/functions/methods_utls.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../domain/entities/payment_entry_user_entities.dart';
import '../../../controller/nav_botom_controlr/payment_entry_conrtolr.dart';
import '../../../widgets/custom_textfield_outline.dart';
import '../../../widgets/error_state.dart';
import '../../../widgets/shimmer/loading_shimer_payment.dart';

class PaymentEntryUserScreen extends StatelessWidget {
  PaymentEntryUserScreen({super.key});
  //
  //
  final PaymentEntryUserController _paymentEntryUserController = Get.find();
  //
  final DetailsPaymentEntryItemController _detailsPaymentEntryItemController =
      Get.find();

  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return
        //
        Scaffold(
      body: SizedBox(
        // color: Colors.red,
        height: 831.h,
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            //
            Container(
              height: 30.h,
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
            //
            Container(
              height: 28.h,
              margin: EdgeInsets.only(right: 22.w),
              alignment: Alignment.centerRight,
              // child: Text(
              //   'اليوم',
              //   style: TextStyle(
              //     fontSize: 16.sp,
              //     fontFamily: AppFonts.almaraiRegular,
              //     color: Colors.black.withOpacity(0.7),
              //   ),
              // ),
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
                onTapTextField: () => buildMethodDatePicker(contexM: context),
                onChangedM: (value) {
                  // //   //
                  // _createNewRequestController.searchInsideListOrderVertixOriginal(
                  //     letterIdName: value, stateOrder: null);
                  //
                },
                isReadOnly: '',
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
            // Container(
            //   height: 28.h,
            //   margin: EdgeInsets.only(right: 22.w),
            //   alignment: Alignment.centerRight,
            //   // child: Text(
            //   //   'اليوم',
            //   //   style: TextStyle(
            //   //     fontSize: 16.sp,
            //   //     fontFamily: AppFonts.almaraiRegular,
            //   //     color: Colors.black.withOpacity(0.7),
            //   //   ),
            //   // ),
            // ),

            //
            Container(
                // color: Colors.purple,
                // height: 10.h,
                // decoration: BoxDecoration(boxShadow: [
                //   BoxShadow(
                //       color: AppColors.backGroundAndTextWhite,
                //       blurRadius: 14,
                //       // spreadRadius: 2,
                //       offset: Offset(0, 11),
                //       blurStyle: BlurStyle.inner)
                // ]),
                ),

            // Container(
            //   height: 700.h,
            //   // color: Colors.amber,

            // )
            SizedBox(
              // color: Colors.orange,
              height: 743.h,
              child: _paymentEntryUserController.obx(
                (state) => RefreshIndicator(
                  //
                  color: AppColors.purpleMainColor,
                  //
                  onRefresh: () async {
                    //
                    _paymentEntryUserController.onInit();
                    //
                  },

                  //
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      //
                      //
                      Container(
                        height: 20.h,
                        // color: Colors.amber,
                      ),
                      //
                      SizedBox(
                        // color: Colors.blue,
                        height: 733.h,
                        child: _paymentEntryUserController
                                .listPaymentEntry.isEmpty
                            ? Center(
                                child: Text(
                                  '  لا توجد عمليات دفع',
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    color: AppColors.textblackLight,
                                    fontFamily: AppFonts.almaraiBold,
                                  ),
                                ),
                              )
                            : CustomScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                slivers: [
                                  //

                                  //
                                  SliverList.builder(
                                      //
                                      itemCount: _paymentEntryUserController
                                          .listPaymentEntry.length,
                                      //
                                      itemBuilder: (context, index) {
                                        //
                                        return buildItemOfList(
                                          numberIndex: index,
                                          listPayment:
                                              _paymentEntryUserController
                                                  .listPaymentEntry,
                                        );
                                      })
                                  //
                                ],
                              ),
                      ),
                    ],
                  ),
                ),

                //
                onLoading: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, index) {
                    return LoadingShimmerPaymentEntry(
                      numberIndex: index,
                      greyColorShimmer: AppColors.greyShimmer,
                    );
                  },
                ),

                // onError
                onError: (error) => ErrorStateWidgetClass(
                  onTapInkWell: () {
                    //

                    //
                    _paymentEntryUserController.onInit();
                  },
                  errorText: error!,
                  fontSizeError: 16.sp,
                  colorTexterror: AppColors.redCancel,
                ),
              ),
              //
            )

            //
            // End Children ListView
          ],
        ),
      ),
    );
    // SafeArea(
    // child:

    // );
  }

  Widget buildItemOfList({
    required int numberIndex,
    required List<PaymentEnteryUserEntities> listPayment,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 17.h),
      color:
          numberIndex % 2 == 0 ? AppColors.whiteItemListOrderBackground : null,
      // height: 100,
      child: InkWell(
        //
        onTap: () async {
          //
          _navBottomController.changeCurrentIndexPaymentEntryScreens(1);

          //
          _detailsPaymentEntryItemController
              .changeIndexListPaymentEntry(numberIndex);

          //
          await _detailsPaymentEntryItemController
              .getDetailsPaymentEntryMethod(listPayment[numberIndex].idPayment);
          //

          //

          //
        },

        //
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //

            Container(
              height: 66.h,
              width: 66.w,
              margin: EdgeInsets.only(right: 22.w),
              padding: EdgeInsets.only(
                  top: 19.h, bottom: 19.4.h, left: 26.w, right: 26.8.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: numberIndex % 2 == 0
                    ? AppColors.skyColor
                    : AppColors.lightRed,
              ),
              child: SvgPicture.asset(AppImages.dollarIconWalletPaymentScrn),
            ),

            //
            SizedBox(
              width: 23.w,
            ),

            //
            // Column
            //==============================================================
            SizedBox(
              // color: Colors.amber,
              width: 295.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  Text(
                    listPayment[numberIndex].partyNameUser,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: Colors.black,
                    ),
                  ),
                  //
                  SizedBox(
                    height: 12.h,
                  ),
                  //
                  //
                  Text(
                    listPayment[numberIndex].idPayment,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: AppFonts.almaraiRegular,
                      color: Colors.black,
                    ),
                  ),
                  //
                  SizedBox(
                    height: 5.h,
                  ),
                  //
                  //
                  Text(
                    listPayment[numberIndex].timeCreation.split(' ')[0],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: AppFonts.almaraiRegular,
                      color: Colors.black,
                    ),
                  ),
                  //
                  SizedBox(
                    height: 8.h,
                  ),
                  //

                  Container(
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        //
                        listPayment[numberIndex].isOffer == 0
                            ? Container()
                            : Container(
                                height: 23.68.h,
                                // width: 30,
                                // height: 20,
                                // color: Colors.red,
                                decoration: BoxDecoration(
                                  color: AppColors.greenIsPaidColor,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                //
                                margin: EdgeInsets.only(bottom: 5.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 0.h),

                                //
                                alignment: Alignment.center,
                                child: Text(
                                  'خصم شركة',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: AppFonts.almaraiBold,
                                    color:
                                        AppColors.whiteItemListOrderBackground,
                                  ),
                                ),
                              ),
                        const Spacer(),
                        Container(
                          height: 23.68.h,
                          width: listPayment[numberIndex]
                                          .paidAmountMoneyTotal
                                          .toString()
                                          .length
                                          .toDouble() *
                                      8 >
                                  190
                              ? 190.w
                              : listPayment[numberIndex]
                                      .paidAmountMoneyTotal
                                      .toString()
                                      .length
                                      .toDouble() *
                                  10,
                          margin: EdgeInsets.only(bottom: 5.h, left: 10.w),
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          decoration: BoxDecoration(
                            color: AppColors.purpleMainColor,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          //
                          alignment: Alignment.center,
                          child: Text(
                            '${MethodsClassUTls.formatNumber(number: listPayment[numberIndex].paidAmountMoneyTotal)} د.ع',
                            // '1000,000,000,0000,000,000,000,000,000,000,000,000',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: AppFonts.almaraiBold,
                              color: AppColors.almostWhiteDidntSaveBtn,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                ],
              ),
            ),

            SizedBox(
              width: 18.w,
            ),

            // Column  Money && State Money
            //
            // End Children Row Item
          ],
        ),
      ),
    );
  }

  // Build Date Picke
  //
  buildMethodDatePicker({required BuildContext contexM}) {
    //
    showDatePicker(
      // initialEntryMode: DatePickerEntryMode.calendarOnly,
      context: contexM,
      initialDate: _paymentEntryUserController.currentDateScrn,
      currentDate: _paymentEntryUserController.dateTimeNow,
      firstDate: DateTime(2000),
      lastDate: DateTime(2120),
    ).then(
      (date) =>
          _paymentEntryUserController.filterPaymentOrderAccordintToDate(date),
    );
  }
}
