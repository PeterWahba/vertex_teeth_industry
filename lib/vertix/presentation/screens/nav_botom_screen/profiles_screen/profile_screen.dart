import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/animation/dots_loading.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/methods_utls.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/profile_usr_controlr.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/pages/pages_name.dart';
import '../../../../../core/utils/text_string_app.dart';
import '../../../../../core/widgets/methods_widgets.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import '../../../widgets/division_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();

  //
  final ProfileUsrController _profileUsrController = Get.find();

  @override
  Widget build(BuildContext context) {
    //
    //
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.pink,
      body:
          //  SafeArea(
          // child:
          SizedBox(
        height: 831.h,
        // color: Colors.blue,
        child: Column(
          children: [
            //
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
            //
            Container(
              height: 172.h,
              margin: EdgeInsets.only(right: 22.w),
              // color: Colors.pink,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  Container(
                    height: 41.h,
                    width: 41.w,
                    padding: EdgeInsets.only(
                        top: 11.h, bottom: 11.94.h, right: 12.44.w, left: 12.w),
                    decoration: BoxDecoration(
                      color: AppColors.purpleMainColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    //
                    child: SvgPicture.asset(AppImages.notificationProfileScrn),
                  ),

                  //
                  SizedBox(
                    width: 80.w,
                  ),
                  //
                  Container(
                      height: 142.h,
                      width: 142.w,
                      margin: EdgeInsets.only(top: 13.h),
                      // decoration: const BoxDecoration(
                      // shape: BoxShape.circle,
                      // color: Colors.amber,
                      // image: DecorationImage(
                      //     image: AssetImage(AppImages.testImage),
                      //     //
                      //     ),
                      // ),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage(AppImages.imageLoadingVertix),
                      )
                      // CircleAvatar(
                      // child:
                      //     Image.asset(
                      //   AppImages.imageLoadingVertixCircle,
                      //   // fit: BoxFit.fill,
                      // ),
                      // ),
                      ),

                  // End Children
                ],
              ),
            ),

            //
            //
            //
            // Container(
            //   height: 67.h,
            //   color: Colors.blue,
            // ),

            //
            Container(
              height: 10.h,
              // color: Colors.blue,
            ),
            //
            SizedBox(
              width: double.infinity,
              height: 39.h,
              child: Center(
                child: Text(
                  _profileUsrController.usrFullName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: AppFonts.almaraiBold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            //

            Container(
                // height: 5.h,
                // color: Colors.red,
                ),

            //
            SizedBox(
              height: 24.h,
              width: double.infinity,
              child: Center(
                child: Text(
                  _profileUsrController.emailUser,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFonts.almaraiRegular,
                    color: AppColors.greyTextHint,
                  ),
                ),
              ),
            ),
            //
            //
            //
            Container(
              height: 15.h,
              // color: Colors.grey,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 22.w),
              child: InkWell(
                onTap: _profileUsrController.status.isLoading ||
                        _profileUsrController.status.isSuccess
                    ? null
                    : () {
                        //
                        _profileUsrController.onInit();
                      },

                //

                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                //
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  height: 73.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: AppColors.purpleMainColor,
                    border: Border.all(color: AppColors.textblackLight),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      // dragStartBehavior: DragStartBehavior.down,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text Money
                          //
                          //
                          _profileUsrController.obx(
                            (state) => Text.rich(
                              maxLines: 1,
                              TextSpan(
                                  style: TextStyle(
                                      color: AppColors.textblackLight,
                                      fontFamily: AppFonts.almaraiBold,
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 28.sp),
                                  children: [
                                    TextSpan(
                                        text: MethodsClassUTls.formatNumber(
                                            number: _profileUsrController
                                                .totalMoney)),
                                    const TextSpan(text: '  '),
                                    const TextSpan(
                                      text: 'د.ع',
                                      style: TextStyle(
                                        color: AppColors.purpleMainColor,
                                      ),
                                    ),
                                  ]),
                            ),

                            //
                            //
                            onLoading: const StaggeredDotsWaveAnimation(
                                size: 20, color: AppColors.purpleMainColor),

                            //

                            onError: (error) => Text(
                              error!,
                              style: TextStyle(
                                color: AppColors.redCancel,
                                fontFamily: AppFonts.almaraiBold,
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),

                          //
                          SizedBox(
                            height: 10.h,
                          ),

                          //
                          Text(
                            AppStringtext.cumulativeAmountProfileScrn,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: AppFonts.almaraiRegular,
                                color: AppColors.textblackLight),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //
            Container(
              height: 280.h,
              padding: EdgeInsets.only(top: 40.h),
              // color: Colors.red,
              child: Column(
                children: [
                  //

                  // 1
                  //
                  DivisionListTileWidgetClass(
                      onTapM: () => MethodsWidgetClass.snackBarMessageGetX(
                            titleSnack: 'إنتباه',
                            messageSnack: '',
                            messageRow: 'لا زالت قيد التطوير',
                            colorTextTitle: AppColors.redCancel,
                            // colorTextBody: AppColors.redCancel,
                          ),
                      // heightDivision: 48.h,
                      iconDivision: AppImages.userIconProfileScrn,
                      heightIcon: 19.h,
                      widthIcon: 21.09.w,
                      marginTop: 0.h,
                      marginLeft: 26.44.w,
                      marginRight: 32.91.w,
                      spaceBetweenDivsionAndDividerHeight: 14.h,
                      spaceBetweenIconAndTextWidth: 21.w,
                      textDivsion: AppStringtext.personalAccountProfileScrn),

                  // 2
                  //
                  DivisionListTileWidgetClass(
                      onTapM: () => MethodsWidgetClass.snackBarMessageGetX(
                            titleSnack: 'إنتباه',
                            messageSnack: '',
                            messageRow: 'لا زالت قيد التطوير',
                            colorTextTitle: AppColors.redCancel,
                            // colorTextBody: AppColors.redCancel,
                          ),
                      iconDivision: AppImages.saveFileProfileScrn,
                      heightIcon: 20.h,
                      widthIcon: 16.77.w,
                      marginTop: 14.h,
                      marginLeft: 26.w,
                      marginRight: 33.23.w,
                      spaceBetweenDivsionAndDividerHeight: 14.h,
                      spaceBetweenIconAndTextWidth: 25.w,
                      textDivsion: AppStringtext.savedFilesProfileScrn),

                  // 3
                  //
                  DivisionListTileWidgetClass(
                      onTapM: () => MethodsWidgetClass.snackBarMessageGetX(
                            titleSnack: 'إنتباه',
                            messageSnack: '',
                            messageRow: 'لا زالت قيد التطوير',
                            colorTextTitle: AppColors.redCancel,
                            // colorTextBody: AppColors.redCancel,
                          ),
                      iconDivision: AppImages.walletProfileScrn,
                      heightIcon: 19.h,
                      widthIcon: 22.77.w,
                      marginTop: 14.h,
                      marginLeft: 26.w,
                      marginRight: 33.23.w,
                      spaceBetweenDivsionAndDividerHeight: 14.h,
                      spaceBetweenIconAndTextWidth: 19.w,
                      textDivsion: AppStringtext.walletProfileScrn),
                  //
                  // 4
                  //
                  DivisionListTileWidgetClass(
                      onTapM: () {
                        //
                        _navBottomController
                            .changeCurrnentIndexProfileScreen(1);
                        //
                      },
                      //
                      iconDivision: AppImages.settingProfileScrn,
                      heightIcon: 20.h,
                      widthIcon: 22.12.w,
                      marginTop: 14.h,
                      marginRight: 32.88.w,
                      marginLeft: 26.w,
                      spaceBetweenDivsionAndDividerHeight: 14.h,
                      spaceBetweenIconAndTextWidth: 20.w,
                      textDivsion: AppStringtext.settingProfileScrn),

                  // 5

                  DivisionListTileWidgetClass(
                    onTapM: () {
                      //
                      _navBottomController.changeCurrnentIndexProfileScreen(2);
                      //
                    },
                    //
                    iconDivision: AppImages.aboutProfileScrn,
                    heightIcon: 20.h,
                    widthIcon: 22.12.w,
                    marginTop: 14.h,
                    marginLeft: 26.w,
                    marginRight: 32.88.w,
                    spaceBetweenDivsionAndDividerHeight: 14.h,
                    spaceBetweenIconAndTextWidth: 20.w,
                    textDivsion: AppStringtext.aboutFAQProfileScrn,
                  ),
                  //
                  // End Children Column
                ],
              ),
            ),

            //
            Container(
              // height: 194.h,
              // height: 176.h,
              height: 159.h,
              // padding: EdgeInsets.only(top: 61.h, bottom: 81.5.h),
              padding: EdgeInsets.only(top: 61.h, bottom: 64.5.h),

              // color: Colors.blue,
              child: ZoomTapAnimation(
                child: InkWell(
                  onTap: () async {
                    // Dialog Sign out
                    //
                    // dialogAskSignOut();
                    MethodsWidgetClass.dialogAskAreYouSure(
                      textM: '',
                      textDialog: 'هل تريد تسجيل الخروج ؟',
                      onTapM: () async {
                        //
                        await _profileUsrController.deleteSharedPrefs();
                        //
                        Get.offAllNamed(AllPagesName.onBoardScren);
                        //
                      },
                    );
                    //

                    //
                  },
                  //
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.only(top: 6.h, bottom: 6.h),
                    // color: Colors.orange,
                    height: 30.h,
                    width: 200.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //
                        Text(
                          AppStringtext.signOutProfileScrn,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFonts.almaraiRegular,
                            color: AppColors.colorRed,
                          ),
                        ),

                        //
                        SizedBox(
                          width: 7.95.w,
                        ),

                        //
                        SizedBox(
                          child: SvgPicture.asset(AppImages.signOutProfileScrn),
                        )
                        // End Children Row
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //
            // End Children
          ],
        ),
      ),
      // )
    );
  }

  //   //
  // }
}
