import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertix/core/utils/fonts_path_class.dart';
import 'package:vertix/core/utils/text_string_app.dart';
import 'package:vertix/vertix/presentation/controller/nav_botom_controlr/detalis_payment_entry_item_contrlr.dart';
import 'package:vertix/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/functions/methods_utls.dart';
import '../../../widgets/shimmer/loading_shimer_payment.dart';

class DetailsPaymentEntryScreen extends StatelessWidget {
  DetailsPaymentEntryScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();
  //
  final DetailsPaymentEntryItemController _detailsPaymentEntryItemController =
      Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //
          SizedBox(
            height: 20.h,
          ),
          //
          Container(
            height: 66.h,
            margin: EdgeInsets.symmetric(horizontal: 22.w),
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
                    color: _detailsPaymentEntryItemController
                                    .indexOfListPaymentEntry %
                                2 ==
                            0
                        ? AppColors.skyColor
                        : AppColors.lightRed,
                  ),
                  child:
                      SvgPicture.asset(AppImages.dollarIconWalletPaymentScrn),
                ),

                //
                const Spacer(),

                ZoomTapAnimation(
                  child: InkWell(
                    //
                    //
                    onTap: () {
                      //
                      _navBottomController
                          .changeCurrentIndexPaymentEntryScreens(0);
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
                ),

                // end Row children
              ],
            ),
          ),

          // ===================================================================
          // ===================================================================
          // ===================================================================
          // ===================================================================

          //

          _detailsPaymentEntryItemController.obx(
              (state) => buildMainMethodOrigin(),

              // onError
              onError: (error) => Container(
                    padding:
                        EdgeInsets.only(right: 20.w, left: 20.w, top: 200.h),
                    alignment: Alignment.center,
                    child: Text(
                      error!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 24.sp,
                        height: 1.3,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.textblackLight,
                      ),
                    ),
                  ),

              // onLoading
              // =================
              onLoading: SizedBox(
                height: 300.h,
                child: ListView.builder(
                  itemCount: 2,
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
              )),

          //

          // End Children main List View
        ],
      ),
    );
  }

  buildTextWidgetWithRow({
    required String titleText,
    required String contentText,
    String? isMoney,
  }) {
    return
        // Padding(

        // child:
        //  Column(
        //   children: [
        //
        Container(
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 35.h),
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Text(
              titleText,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: AppFonts.almaraiBold,
                color: AppColors.purpleMainColor,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              ':',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: AppFonts.almaraiBold,
                color: AppColors.purpleMainColor,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            // Expanded(
            //   child:
            Expanded(
              child: Text(
                contentText,
                // textDirection: TextDirection.ltr,
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
                style: TextStyle(
                  fontSize: 24.sp,
                  height: 1.3,
                  fontFamily: AppFonts.almaraiBold,
                  color: AppColors.textblackLight,
                ),
              ),
            ),
            // ),

            //
            // isMoney == null
            //     ? Container()
            //     : SizedBox(
            //         width: 5.w,
            //       ),

            //
            // isMoney == null
            //     ? Container()
            //     : Text(
            //         'د.ع',
            //         overflow: TextOverflow.ellipsis,
            //         // maxLines: 20,
            //         style: TextStyle(
            //           fontSize: 24.sp,
            //           fontFamily: AppFonts.almaraiBold,
            //           color: AppColors.textblackLight,
            //         ),
            //       ),
          ], //end Children Row
          // )
          //   ],
          // ),
        ),
      ),
    );
  }

  buildWidgetOfMoney({
    required String titleText,
    required String contentText,
  }) {
    //
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            // ignore: prefer_interpolation_to_compose_strings
            titleText + ' ' + ':',
            // textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            maxLines: 20,
            style: TextStyle(
              fontSize: 24.sp,
              height: 1.3,
              fontFamily: AppFonts.almaraiBold,
              color: AppColors.purpleMainColor,
            ),
          ),
        ),
        //
        SizedBox(
          height: 10.h,
        ),
        //
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            // ignore: prefer_interpolation_to_compose_strings
            contentText + ' ' + 'د.ع',
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            maxLines: 20,
            style: TextStyle(
              fontSize: 24.sp,
              fontFamily: AppFonts.almaraiBold,
              color: AppColors.textblackLight,
            ),
          ),
        ),
        //
        //
        SizedBox(
          height: 10.h,
        ),
        //
      ], // End Cildren Column
    );
  } //end method buildWidgetOfMoney

  buildMainMethodOrigin() {
    return Padding(
      padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 45.h),
      child: Column(
        children: [
          //
          buildTextWidgetWithRow(
            titleText: 'رمز الوصل',
            contentText: _detailsPaymentEntryItemController
                    .detailesPaymentEntryEntities?.idPayment ??
                '',
          ),
          //
          buildTextWidgetWithRow(
            titleText: 'الأسم',
            contentText: _detailsPaymentEntryItemController
                    .detailesPaymentEntryEntities?.nameUser ??
                '',
          ),
          //
          buildTextWidgetWithRow(
            titleText: 'التاريخ',
            contentText: _detailsPaymentEntryItemController
                    .detailesPaymentEntryEntities?.postingDate ??
                '',
          ),

          //
          buildWidgetOfMoney(
            titleText: 'المبلغ المدفوع',
            contentText: MethodsClassUTls.formatNumber(
                number: _detailsPaymentEntryItemController
                        .detailesPaymentEntryEntities?.paidAmount ??
                    0),
          ),

          //
          buildWidgetOfMoney(
            titleText: 'الرصيد',
            contentText: MethodsClassUTls.formatNumber(
                number: _detailsPaymentEntryItemController
                        .detailesPaymentEntryEntities?.partyBalance ??
                    0),
          ),
          //
          SizedBox(
            height: 15.h,
          ),

          //
          _detailsPaymentEntryItemController
                          .detailesPaymentEntryEntities?.isOffer ==
                      null ||
                  _detailsPaymentEntryItemController
                          .detailesPaymentEntryEntities!.isOffer ==
                      0
              ? Container()
              : Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 23.68.h,
                    width: 100,
                    // height: 20,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: AppColors.greenIsPaidColor,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    //
                    margin: EdgeInsets.only(bottom: 5.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),

                    //
                    alignment: Alignment.center,
                    child: Text(
                      'خصم شركة',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.whiteItemListOrderBackground,
                      ),
                    ),
                  ),
                ),

          SizedBox(
            height: 80.h,
          ),

          ZoomTapAnimation(
            child: Container(
              width: double.infinity,
              // margin: EdgeInsets.symmetric(horizontal: 22.w),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColors.purpleMainColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              //
              alignment: Alignment.center,
              // ================
              child: Text(
                AppStringtext.btnDownloadBillDetailsPaymentScrn,
                style: TextStyle(
                    fontSize: 24.sp,
                    color: AppColors.almostWhiteDidntSaveBtn,
                    fontFamily: AppFonts.almaraiRegular),
              ),
            ),
          ),

          //
        ], //End Children Column
      ),
    );
  }
} //End Class
