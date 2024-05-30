import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';

import '../../../../core/widgets/methods_widgets.dart';
import '../../controller/nav_botom_controlr/home_controllr.dart';
import '../../widgets/clas_can_be_remove.dart';
import '../../widgets/custom_textfield_outline.dart';
import '../../widgets/item_order_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //
  final HomePageController _homePageController = Get.find();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: false,
      //
      body: SizedBox(
        //
        height: 851.h,
        //
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          //
          children: [
            //
            //  Spacing
            // =================================================================

            SizedBox(
              height: 44.h,
            ),

            //
            Container(
              height: 41.h,
              width: 41.w,
              margin: EdgeInsets.only(right: 22.w, left: 365.w),
              padding: EdgeInsets.only(
                  top: 11.h, bottom: 11.94.h, left: 12.w, right: 12.44.w),
              decoration: BoxDecoration(
                color: AppColors.purpleMainColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(AppImages.notificationProfileScrn),
            ),

            //
            //
            //  Spacing
            // =================================================================

            SizedBox(
              height: 20.h,
            ),
            //
            Container(
              margin: EdgeInsets.only(right: 22.w),
              child: Text.rich(
                TextSpan(
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: AppColors.purpleMainColor,
                    ),
                    //
                    children: const [
                      //
                      TextSpan(text: AppStringtext.showHomeScrn),
                      //
                      TextSpan(text: ' '),
                      //
                      TextSpan(
                          text: AppStringtext.andHomeScrn,
                          style: TextStyle(color: Colors.black)),
                      //
                      TextSpan(text: ' '),
                      //
                      TextSpan(text: AppStringtext.adsHomeScrn),
                      //
                      // End Children Text Rich
                    ]),
              ),
            ),

            //
            //  Spacing
            // =================================================================

            SizedBox(
              height: 16.h,
            ),

            //
            // Page View
            // =================================================================
            SizedBox(
              height: 202.h,
              child: PageView.builder(
                // reverse: true,

                controller: _homePageController.pageController,
                itemCount: 3,

                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  height: 202.h,
                  width: 384.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: DecorationImage(
                          image: AssetImage(AppImages.imageADSHomScren))),
                ),
              ),
            ),

            //

            //
            //  Spacing
            // =================================================================

            SizedBox(
              height: 17.h,
            ),

            //
            Center(
              child: SmoothPageIndicator(
                count: 3,
                controller: _homePageController.pageController,
                effect: WormEffect(
                  dotHeight: 12.h,
                  dotWidth: 12.w,
                  spacing: 10,
                  activeDotColor: AppColors.purpleMainColor,
                  dotColor: AppColors.greyindicator,
                ),
              ),
            ),

            //
            //  Spacing
            // =================================================================

            SizedBox(
              height: 17.h,
            ),

            // TextForm Field
            // =================================

            Container(
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              height: 56.h,
              child: CustomTextfieldOutLineProduct(
                hintText: AppStringtext.hintTextSearchHomeScrn,
                colorHintText: AppColors.greyTextHint,
                showPrefix: false,
                showSuffix: false,
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
              margin: EdgeInsets.only(top: 17.h),
              height: 34.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _homePageController.listSateOrder.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  //
                  final stateOrder = _homePageController.listSateOrder[index];
                  //
                  return //
                      Container(
                    padding: EdgeInsets.only(
                        top: 8.h, bottom: 9.h, right: 8.w, left: 8.w),
                    margin: EdgeInsets.only(right: 15.w),
                    decoration: BoxDecoration(
                      color: MethodsWidgetClass.colorItemListOrder(stateOrder),
                      // border: Border.all(
                      //   color: MethodsWidgetClass.colorBorderOrderState(
                      //       stateOrder),
                      // ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      stateOrder,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.backGroundAndTextWhite,
                      ),
                    ),
                  );
                },
              ),
            ),
            //
            SizedBox(
              height: 11.h,
            ),
            //

            SizedBox(
              height: ((listItemOrder.length - 1) * 100.1).h,
              child: ListView.builder(
                  itemCount: listItemOrder.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    //
                    final item = listItemOrder[index];
                    //
                    return ItemOrderWidgetClass(
                      colorBox:
                          MethodsWidgetClass.colorItemListOrder(item.state),
                      colorState:
                          MethodsWidgetClass.colorItemListOrder(item.state),
                      numberindex: index,
                      stateText: item.state,
                      timeOrder: item.time,
                    );
                  }
                  //
                  ),
            )

            //  End Children
          ],
        ),
      ),
      // End Scaffold
    );
  }
}
