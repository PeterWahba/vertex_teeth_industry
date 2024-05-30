import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/fonts_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/utils/text_string_app.dart';
import '../../../controller/nav_botom_controlr/nav_botom_controlr.dart';
import '../../../widgets/division_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    //
    final double heightQryM = MediaQuery.of(context).size.height;
    //
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.pink,
        body: Container(
          height: 851.h,
          // color: Colors.amber,
          child: Column(
            children: [
              //
              Container(
                height: 44.h,
                // color: Colors.orange,
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
                          top: 11.h,
                          bottom: 11.94.h,
                          right: 12.44.w,
                          left: 12.w),
                      decoration: BoxDecoration(
                        color: AppColors.purpleMainColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      //
                      child:
                          SvgPicture.asset(AppImages.notificationProfileScrn),
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //     image: AssetImage(AppImages.testImage),
                        //     //
                        //     ),
                      ),
                      child: Image.asset(AppImages.testImage),
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
                    ' علي وليد خالد خليفة',
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
                height: 5.h,
                // color: Colors.red,
              ),

              //
              SizedBox(
                height: 24.h,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'walid.kh172@gmail.com',
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
                height: 56.h,
                decoration: BoxDecoration(
                  color: AppColors.purpleMainColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    AppStringtext.editPersonalAccountProfileScrn,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: AppFonts.almaraiBold,
                        color: AppColors.backGroundAndTextWhite),
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
                        _navBottomController
                            .changeCurrnentIndexProfileScreen(2);
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
                height: 204.h,
                padding: EdgeInsets.only(top: 61.h, bottom: 101.5.h),

                // color: Colors.blue,
                child: ZoomTapAnimation(
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

              //
              // End Children
            ],
          ),
        ));
  }
}
