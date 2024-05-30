import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../../core/utils/images_path_class.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../../core/widgets/methods_widgets.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import '../../../widgets/clas_can_be_remove.dart';
import '../../../widgets/item_order_widget.dart';

class ListOrderPageViewScreen extends StatelessWidget {
  ListOrderPageViewScreen({super.key});

  //
  //
  final NavBottomController _navBottomController = Get.find();
  //
  //

  //
  final List<ItemListOrder> listItemOrder = [
    //
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الموافقة',
        time: '3'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'معلق الطلب',
        time: '5'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الالغاء',
        time: '15'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'فارغ',
        time: '20'),
    //
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الموافقة',
        time: '3'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الالغاء',
        time: '15'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'فارغ',
        time: '20'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'معلق الطلب',
        time: '5'),
    //
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'فارغ',
        time: '20'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'معلق الطلب',
        time: '5'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الالغاء',
        time: '15'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الموافقة',
        time: '3'),
    //
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الموافقة',
        time: '3'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الالغاء',
        time: '15'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'فارغ',
        time: '20'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'معلق الطلب',
        time: '5'),
    //
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'فارغ',
        time: '20'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'معلق الطلب',
        time: '5'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الالغاء',
        time: '15'),
    ItemListOrder(
        idOredr: 'ID: ORD-KR-04-24-00021',
        name: 'الاسم: وليد خالد خليفة',
        state: 'تم الموافقة',
        time: '3'),
    // End List
  ];
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
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
                  child: InkWell(
                    //
                    onTap: () {
                      //
                      // _listOrderNavBottomController.controllerPage.animateTo(   , duration: Duration(microseconds: 200), curve: Curves.linear);
                      // _listOrderNavBottomController.controllerPage
                      //     .animateToPage(2,
                      //         duration: Duration(milliseconds: 200),
                      //         curve: Curves.linear);
                      //
                      // _listOrderNavBottomController.controllerPage.jumpTo(1);
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

                // ZoomTapAnimation(
                //   child: Container(
                //     height: 41.h,
                //     width: 41.w,
                //     padding: EdgeInsets.only(
                //         top: 11.h, bottom: 11.h, left: 10.w, right: 12.w),
                //     decoration: BoxDecoration(
                //         color: AppColors.purpleMainColor,
                //         borderRadius: BorderRadius.circular(12.r)),
                //     child: SvgPicture.asset(AppImages.backArrow),
                //   ),
                // )
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
              height: 672.h,
              // width: 50,
              // color: Colors.grey,
              //
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: 17.h),
                itemCount: listItemOrder.length,
                itemBuilder: (context, index) {
                  //
                  final itemOrder = listItemOrder[index];
                  //
                  return ItemOrderWidgetClass(
                    numberindex: index,
                    timeOrder: itemOrder.time,
                    stateText: itemOrder.state,
                    colorBox:
                        MethodsWidgetClass.colorItemListOrder(itemOrder.state),
                    colorState:
                        MethodsWidgetClass.colorItemListOrder(itemOrder.state),
                  );
                },
              )),

          //
        ],
      ),
    );
  }

  Widget buildTextField() {
    //
    return TextFormField(
      //

      //
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        // EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 10.w),

        //
        prefixIcon: Container(
          // color: Colors.amber,
          padding: EdgeInsets.only(top: 20.h, bottom: 22.h, right: 18.w),
          height: 14.h,
          width: 24.5.w,
          child: SvgPicture.asset(AppImages.filterTextFieldtListOrderScrn),
        ),

        //
        suffixIcon: Container(
          padding: EdgeInsets.only(top: 18.h, bottom: 18.h, right: 18.w),
          height: 20.h,
          width: 20.w,
          child: Text(
            AppStringtext.idListOrderScrn,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.greyIdListOrderScrn,
              fontFamily: AppFonts.almaraiRegular,
            ),
          ),
        ),

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
