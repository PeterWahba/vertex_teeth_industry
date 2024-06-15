import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';

import '../../../../core/utils/methods_utls.dart';
import '../../../../core/widgets/methods_widgets.dart';
import '../../controller/nav_botom_controlr/home_controllr.dart';
import '../../widgets/custom_textfield_outline.dart';
import '../../widgets/error_state.dart';
import '../../widgets/item_order_widget.dart';
import '../../widgets/shimmer/loading_shimmer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //
  final HomePageController _homePageController = Get.find();

  //
  final CreateNewRequestController _createNewRequestController = Get.find();

  //

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: false,
      //
      body: SafeArea(
        child: RefreshIndicator(
          //
          onRefresh: () async {
            //

            //
            _homePageController.onInit();
            //
            _createNewRequestController.onInit();
          },
          //
          color: AppColors.purpleMainColor,

          //
          child: SizedBox(
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
                  height: 15.h,
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
                // Image Banner ADS Scrolling
                // =================================================================
                // =================================================================
                // =================================================================
                SizedBox(
                  height: 202.h,
                  //
                  child: _homePageController.obx(
                    (state) => buildCarsolImageBuilder(
                      lenghtItemCount: _homePageController.listImages.length,
                      listImages: _homePageController.listImages,
                      isEmpty: null,
                    ),

                    // on Empty should show thre vertix Image
                    onEmpty: buildLoadingEmpty(),

                    // onError State
                    onError: (error) => InkWell(
                      //
                      onTap: () {
                        //
                        _homePageController.onInit();

                        //
                      },
                      //
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      //
                      child: Container(
                        height: 202.h,
                        width: 384.w,
                        margin: EdgeInsets.symmetric(horizontal: 22.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Text(
                            error!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.redCancel,
                              fontFamily: AppFonts.almaraiBold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // OnLoading
                    // ===================
                    onLoading: buildLoadingEmpty(),
                  ),

                  //
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
                  child: GetBuilder<HomePageController>(builder: (_) {
                    return AnimatedSmoothIndicator(
                      activeIndex: _homePageController.activeDotIndex,

                      count: _homePageController.listImages.isEmpty
                          ? 1
                          : _homePageController.listImages.length,
                      // controller: _homePageController.pageController,
                      effect: ScrollingDotsEffect(
                        dotHeight: 12.h,
                        dotWidth: 12.w,
                        spacing: 10,
                        activeDotColor: AppColors.purpleMainColor,
                        dotColor: AppColors.greyindicator,
                      ),
                    );
                  }),
                ),

                //
                //  Spacing
                // =================================================================

                SizedBox(
                  height: 17.h,
                ),

                // TextForm Field
                // ===============================================================
                // ===============================================================
                // ===============================================================
                // ===============================================================

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22.w),
                  height: 56.h,
                  child: CustomTextfieldOutLineProduct(
                    hintText: AppStringtext.hintTextSearchHomeScrn,
                    colorHintText: AppColors.greyTextHint,
                    onChangedM: (value) async {
                      //
                      await _createNewRequestController
                          .searchInsideListOrderVertixOriginalHomePage(
                              letterIdNameHome: value, stateOrderHome: null);
                      //
                    },
                    showPrefix: false,
                    showSuffix: false,
                    widgetPrefixIcon: Container(
                      margin:
                          EdgeInsets.only(top: 18.h, bottom: 18.h, right: 16.w),
                      height: 20.h,
                      width: 20.w,
                      child: SvgPicture.asset(AppImages.searchHomeScren),
                    ),
                  ),
                ),

                //
                //

                // Filter Orders
                // ===============================================================
                // ===============================================================
                // ===============================================================
                // ===============================================================
                //
                Container(
                  margin: EdgeInsets.only(top: 17.h),
                  height: 34.h,
                  child: GetBuilder<CreateNewRequestController>(
                      //
                      builder: (_) {
                    //
                    return ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          _createNewRequestController.listSateOrder.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        //
                        final stateOrder =
                            _createNewRequestController.listSateOrder[index];
                        //
                        return //
                            InkWell(
                          //
                          onTap: _createNewRequestController.status.isLoading
                              ? () {}
                              : () async {
                                  //
                                  _createNewRequestController
                                      .changeStateOrderDivsionHomePage(index);

                                  //
                                  await _createNewRequestController
                                      .searchInsideListOrderVertixOriginalHomePage(
                                          letterIdNameHome: null,
                                          stateOrderHome:
                                              stateOrder.stateEnglish);

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
                              color: _createNewRequestController
                                          .stateOrderDivisionHomePage ==
                                      index
                                  ? MethodsWidgetClass.colorItemListOrder(
                                      stateOrder.stateArabic)
                                  : Colors.transparent,
                              border: Border.all(
                                color: _createNewRequestController
                                            .stateOrderDivisionHomePage ==
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
                                color: _createNewRequestController
                                            .stateOrderDivisionHomePage ==
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
                SizedBox(
                  height: 11.h,
                ),
                //

                // ===============================================================
                // ===============================================================
                // ===============================================================
                // ===============================================================
                // ===============================================================
                //  List Items Orders

                SizedBox(
                  child: _createNewRequestController.obx(
                    (state) => SizedBox(
                        height: _createNewRequestController
                                    .listOrderVertixEntitiesHomePage.length <
                                5
                            ? 4 * 100.01
                            : ((_createNewRequestController
                                        .listOrderVertixEntitiesHomePage
                                        .length) *
                                    100.01)
                                .h,
                        child: buildMainWidget()),

                    // OnLoading
                    // ==================
                    onLoading: SizedBox(
                      height: 4 * 100.01.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          //
                          return LoadingShimmerWidgetClass(
                            numberindex: index,
                            greyColorShimmer: AppColors.greyShimmer,
                          );
                        },
                      ),
                    ),

                    onError: (error) => SizedBox(
                      height: 200.h,
                      // color: Colors.blue,
                      child: ErrorStateWidgetClass(
                        onTapInkWell: () {
                          //

                          _createNewRequestController.onInit();
                        },
                        fontSizeError: 16.sp,
                        colorTexterror: AppColors.redCancel,
                        errorText: error!,
                      ),
                    ),
                  ),
                )

                //  End Children
              ],
            ),
          ),
        ),
      ),
      // End Scaffold
    );
  }

  // main Widget
  Widget buildMainWidget() {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        //
        SliverList.builder(
          //

          // itemCount:
          //     _createNewRequestController.listOrderVertixEntities.length > 15
          //         ? 15
          //         : _createNewRequestController.listOrderVertixEntities.length,
          itemCount: _createNewRequestController
              .listOrderVertixEntitiesHomePage.length,
          //
          itemBuilder: (context, index) {
            //
            final itemOrder = _createNewRequestController
                .listOrderVertixEntitiesHomePage[index];

            //
            return ItemOrderWidgetClass(
              numberindex: index,
              isPaid: itemOrder.isPaid,
              totalMoney: itemOrder.totalAmount,
              idOrder: itemOrder.idOrder,
              namePatien: itemOrder.patientName,
              timeOrder:
                  MethodsClassUTls.convertToTimeAgo(itemOrder.postingTime),
              stateText: _createNewRequestController
                  .translateStateOrderToArabic(itemOrder.orderState),
              colorBox:
                  MethodsWidgetClass.colorItemListOrder(itemOrder.orderState),
              colorState:
                  MethodsWidgetClass.colorItemListOrder(itemOrder.orderState),
            );

            // End ItemBuilder
          },
          //

          // End SliverList.Builder
        ),
      ],
    );

    // end main Widget
  }

  buildCarsolImageBuilder({
    required int lenghtItemCount,
    required List<String> listImages,
    required String? isEmpty,
  }) {
    return listImages.isEmpty
        ? buildLoadingEmpty()
        : CarouselSlider.builder(
            itemCount: lenghtItemCount,
            itemBuilder: (contex, index1, index2) {
              //
              String imageUrl = listImages[index1];
              //
              return isEmpty != null
                  ? Container(
                      height: 202.h,
                      width: 384.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        // border: Border.all(color: Colors.black),
                        image: const DecorationImage(
                            image: AssetImage(AppImages.imageLoadingVertix),
                            fit: BoxFit.fill),
                      ),
                    )
                  : SizedBox(
                      height: 202.h,
                      width: 384.w,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(16.r),
                      //     // border: Border.all(color: Colors.black),
                      //     image: const DecorationImage(
                      //         image: AssetImage(AppImages.imageLoadingVertix),
                      //         fit: BoxFit.fill),
                      //         ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        placeholder: (context, url) => Center(
                          child: Container(
                            height: 202.h,
                            width: 384.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              // border: Border.all(color: Colors.black),
                              image: const DecorationImage(
                                  image:
                                      AssetImage(AppImages.imageLoadingVertix),
                                  fit: BoxFit.fill),
                            ),
                            // child:,
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                            height: 202.h,
                            width: 384.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              // border: Border.all(color: Colors.black),
                              image: const DecorationImage(
                                  image:
                                      AssetImage(AppImages.imageLoadingVertix),
                                  fit: BoxFit.fill),
                            ),
                            child:
                                SvgPicture.asset(AppImages.imageLoadingVertix)),
                      ),
                    );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                //
                // change dot active
                _homePageController.changeActiveDotIndex(index);
                //
              },
              autoPlayAnimationDuration: const Duration(seconds: 2),
            ),
          );

    // end Method main Widget Images Ads
  }

  buildLoadingEmpty() {
    return Container(
      height: 202.h,
      width: 384.w,
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          // border: Border.all(color: Colors.black),
          image: const DecorationImage(
              image: AssetImage(AppImages.imageLoadingVertix),
              fit: BoxFit.fill)),
    );
  }
}
