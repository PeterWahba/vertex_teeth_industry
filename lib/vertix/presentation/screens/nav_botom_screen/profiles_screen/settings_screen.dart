import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/core/utils/text_string_app.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/profile_usr_controlr.dart';

import '../../../../../core/pages/pages_name.dart';
import '../../../../../core/functions/methods_widgets.dart';
import '../../../widgets/division_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();
  //
  final ProfileUsrController _profileUsrController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 831.h,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            //
            // Spacing
            // ===================================================================
            SizedBox(
              height: 20.h,
            ),

            //
            Container(
              margin: EdgeInsets.only(right: 365.w, left: 22.w),
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  //
                  _navBottomController.changeCurrnentIndexProfileScreen(0);
                  //
                },
                child: Container(
                  height: 41.h,
                  width: 41.w,
                  padding: EdgeInsets.only(
                      top: 11.h, bottom: 11.h, right: 12.w, left: 10.w),
                  decoration: BoxDecoration(
                    color: AppColors.purpleMainColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: SvgPicture.asset(AppImages.backArrow),
                ),
              ),
            ),

            //

            // Spacing
            // ===================================================================
            SizedBox(
              height: 48.h,
            ),

            //

            //
            DivisionListTileWidgetClass(
              //
              onTapM: () => MethodsWidgetClass.snackBarMessageGetX(
                titleSnack: 'إنتباه',
                messageSnack: '',
                messageRow: 'لا زالت قيد التطوير',
                colorTextTitle: AppColors.redCancel,
                // colorTextBody: AppColors.redCancel,
              ),
              //
              heightIcon: 18.06.h,
              widthIcon: 16.56.w,
              iconDivision: AppImages.notificationSettingsScrn,
              marginLeft: 35.w,
              marginRight: 40.44.w,
              marginTop: 0,
              spaceBetweenDivsionAndDividerHeight: 14.94.h,
              spaceBetweenIconAndTextWidth: 22.w,
              textDivsion: AppStringtext.notificationSettingsScrn,

              //
            ),

            //
            DivisionListTileWidgetClass(
              //
              onTapM: () => MethodsWidgetClass.snackBarMessageGetX(
                titleSnack: 'إنتباه',
                messageSnack: '',
                messageRow: 'لا زالت قيد التطوير',
                colorTextTitle: AppColors.redCancel,
                // colorTextBody: AppColors.redCancel,
              ),
              //
              heightIcon: 19.h,
              widthIcon: 19.w,
              iconDivision: AppImages.keyIconSettingsScrn,
              marginLeft: 35.w,
              marginRight: 39.w,
              marginTop: 14,
              spaceBetweenDivsionAndDividerHeight: 15.h,
              spaceBetweenIconAndTextWidth: 21.w,
              textDivsion: AppStringtext.managePasswordSettingsScrn,

              //
            ),

            //
            DivisionListTileWidgetClass(
              //
              onTapM: () {
                //
                MethodsWidgetClass.dialogAskAreYouSure(
                  textM: '',
                  textDialog: 'هل انت متأكد انك تريد حذف الحساب',
                  onTapM: () async {
                    //
                    await _profileUsrController.deleteSharedPrefs();
                    //
                    await _profileUsrController.openLinkDeleteAccount();
                    //
                    Future.delayed(const Duration(seconds: 1), () {
                      //
                      Get.offAllNamed(AllPagesName.onBoardScren);
                    });

                    // end onTap Dialog
                  },
                );
                // end onTap Method
              },
              //
              heightIcon: 19.h,
              widthIcon: 19.w,
              iconDivision: AppImages.userIconProfileScrn,
              marginLeft: 35.w,
              marginRight: 39.w,
              marginTop: 14,
              spaceBetweenDivsionAndDividerHeight: 15.h,
              spaceBetweenIconAndTextWidth: 21.w,
              textDivsion: AppStringtext.deleteAccountSettingsScrn,

              //
            ),

            // End Children
          ],
        ),
      ),
    );
  }
}
