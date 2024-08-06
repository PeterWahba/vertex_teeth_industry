import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:vertix/core/utils/images_path_class.dart';

import '../theme/colors_app.dart';

class MethodsClassUTls {
  //

  static String formatNumber({required double number, int? numberAfterdot}) {
    String formattedString = number.toStringAsFixed(
        number.truncateToDouble() == number ? 0 : numberAfterdot ?? 2);
    formattedString.endsWith(numberAfterdot != null ? ".0" : ".00")
        ? formattedString.split(".")[0]
        : formattedString;

    //
    // Create a NumberFormat instance for formatting numbers with commas
    final formatter = NumberFormat('#,##0', 'en_US');

    // Format the number with commas
    return formatter.format(number);
  }

  //
  static String convertToTimeAgo(String date) {
    // Parse the date string into a DateTime object
    DateTime dateTime = DateTime.parse(date);

    // Get the current date
    DateTime now = DateTime.now();

    // final ar = timeago.setLocaleMessages('ar', timeago.ArMessages());

    // Use the timeago package to format the DateTime object
    return timeago.format(
      dateTime,
      // locale: 'ar_short',
      locale: 'en_short',
      clock: now,
      allowFromNow: true,
    );

    //
    // print('\n');
    // print('================================================');
    // print('The Time ago is $reslt and index is $index ');
    // print('==================================================');
    // print('\n');
  }

  // String
  //
  static String translateStateOrderToArabic(String stateEnglish) {
    //

    //
    switch (stateEnglish) {
      //
      case "Registered and Approved":
        return 'تم الموافقة';

      // //
      // case "On The Way":
      //   return 'في الطريق';

      // //
      // case "Ready for Packaging":
      //   return 'جاهز للتغليف';

      //
      case "Ready for Packaging":
        return 'تم الموافقة';

      //
      case "Case finished and Packaged":
        return 'تم الموافقة';

      // //
      // case "In Production":
      //   return 'قيد الإنتاج';

      //
      case "In Production":
        return 'تم الموافقة';

      //
      // case "Re-Postponed":
      //   return 'إعادة التأجيل';

      //
      case "Re-Postponed":
        return 'تم الموافقة';

      //
      // case "Postponed":
      //   return 'تاجيل';

      //
      case "Postponed":
        return 'تم الموافقة';

      //
      case "Case finished and Packaging":
        return 'حالة الانتهاء والتعبئة والتغليف';

      //
      //
      case "Finished Delivered":
        return 'الانتهاء من التسليم';

      //
      //
      case "Pending approval":
        return 'معلق الطلب';

      //
      // case "Remake Case":
      //   return 'طبعة جديدة';

      //
      case "Remake Case":
        return 'الانتهاء من التسليم';

      //
      case "Cancelled":
        return 'مرفوض';

      //
      case "Case Rejected":
        return 'مرفوض';

      //
      //
      // case :
      //   return ;

      //
      // case 'مسجلة ومعتمدة':
      //   return AppColors.greenColor;
      // //

      // case 'مرفوض':
      //   return AppColors.redCancel;

      default:
        return stateEnglish;

      // End Switch
    }
  }

  // Colors
  static Color colorItemListOrder(String stateorder) {
    //

    //
    switch (stateorder) {
      //
      case 'الكل':
        return AppColors.skyColor;

      //
      case 'تم الموافقة':
        return AppColors.skyColor;

      //
      case 'مسجلة ومعتمدة':
        return AppColors.greenColor;
      //
      case "Registered and Approved":
        return AppColors.skyColor;
      //
      case "Case finished and Packaged":
        return AppColors.skyColor;
      //
      // //
      case 'مرفوض':
        return AppColors.redCancel;
      //
      case 'طبعة جديدة ':
        return AppColors.yellowColor;
      //
      case "Remake Case":
        return AppColors.greenColor;
      //
      case 'الانتهاء من التسليم':
        return AppColors.greenColor;
      //
      case 'حالة الانتهاء والتعبئة والتغليف':
        return AppColors.blueColor;

      //
      case "Case finished and Packaging":
        return AppColors.blueColor;

      //
      case 'في انتظار الموافقة':
        return AppColors.orangeColor;

      //
      case 'تاجيل':
        return AppColors.redCancel;

      //
      case "Postponed":
        return AppColors.skyColor;

      //
      case 'في الطريق':
        return AppColors.blueColor;

      //
      // case "On The Way":
      //   return AppColors.blueColor;

      //
      case 'جاهز للتغليف':
        return AppColors.greyStateColor;
      //
      case "Ready for Packaging":
        return AppColors.skyColor;
      //
      case 'قيد الإنتاج':
        return AppColors.blueColor;
      //
      case "In Production":
        return AppColors.skyColor;
      //
      case 'إعادة التأجيل':
        return AppColors.orangeColor;

      //
      case "Re-Postponed":
        return AppColors.skyColor;

      //
      case 'Finished Delivered':
        return AppColors.greenColor;

      //
      case 'معلق الطلب':
        return AppColors.lightRed;

      //
      case 'Pending approval':
        return AppColors.lightRed;

      //
      case 'تم الالغاء':
        return AppColors.redCancel;

      //
      case 'Case Rejected':
        return AppColors.redCancel;

      //
      case 'Cancelled':
        return AppColors.redCancel;

      //

      //
      case 'فارغ':
        return AppColors.lightPurpleEmpty;

      //

      default:
        return AppColors.textblackLight;

      // End Switch
    }
  }

  // Images According to TypeProduct
  //
  static String imageToothAccordingToTypeProduct({
    required String numberTooth,
    required String typeProductToChoseColor,
  }) {
    //

    switch (numberTooth) {
      //

      case '18':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth18,
          //
          pFMLaserImage: AppImages.teethPFMLaser18,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay18,
          eMaxPressImage: AppImages.teethEMaxPress18,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy18,
          zirconLayeredImage: AppImages.teethZirconLayered18,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax18,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior18,
          eMaxSupremImage: AppImages.teethEMaxSuprem18,
          //
        );
      //

      case '17':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth17,
          //
          pFMLaserImage: AppImages.teethPFMLaser17,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay17,
          eMaxPressImage: AppImages.teethEMaxPress17,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy17,
          zirconLayeredImage: AppImages.teethZirconLayered17,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax17,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior17,
          eMaxSupremImage: AppImages.teethEMaxSuprem17,
          //
        );
      //

      case '16':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth16,
          //
          pFMLaserImage: AppImages.teethPFMLaser16,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay16,
          eMaxPressImage: AppImages.teethEMaxPress16,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy16,
          zirconLayeredImage: AppImages.teethZirconLayered16,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax16,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior16,
          eMaxSupremImage: AppImages.teethEMaxSuprem16,
          //
        );
      //

      case '15':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth15,
          //
          pFMLaserImage: AppImages.teethPFMLaser15,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay15,
          eMaxPressImage: AppImages.teethEMaxPress15,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy15,
          zirconLayeredImage: AppImages.teethZirconLayered15,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax15,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior15,
          eMaxSupremImage: AppImages.teethEMaxSuprem15,
          //
        );
      //

      case '14':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth14,
          //
          pFMLaserImage: AppImages.teethPFMLaser14,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay14,
          eMaxPressImage: AppImages.teethEMaxPress14,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy14,
          zirconLayeredImage: AppImages.teethZirconLayered14,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax14,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior14,
          eMaxSupremImage: AppImages.teethEMaxSuprem14,
          //
        );
      //

      case '13':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth13,
          //
          pFMLaserImage: AppImages.teethPFMLaser13,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay13,
          eMaxPressImage: AppImages.teethEMaxPress13,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy13,
          zirconLayeredImage: AppImages.teethZirconLayered13,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax13,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior13,
          eMaxSupremImage: AppImages.teethEMaxSuprem13,
          //
        );

      //

      case '12':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth12,
          //
          pFMLaserImage: AppImages.teethPFMLaser12,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay12,
          eMaxPressImage: AppImages.teethEMaxPress12,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy12,
          zirconLayeredImage: AppImages.teethZirconLayered12,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax12,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior12,
          eMaxSupremImage: AppImages.teethEMaxSuprem12,
          //
        );

      //

      case '11':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth11,
          //
          pFMLaserImage: AppImages.teethPFMLaser11,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay11,
          eMaxPressImage: AppImages.teethEMaxPress11,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy11,
          zirconLayeredImage: AppImages.teethZirconLayered11,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax11,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior11,
          eMaxSupremImage: AppImages.teethEMaxSuprem11,
          //
        );

      //

      case '21':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth21,
          //
          pFMLaserImage: AppImages.teethPFMLaser21,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay21,
          eMaxPressImage: AppImages.teethEMaxPress21,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy21,
          zirconLayeredImage: AppImages.teethZirconLayered21,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax21,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior21,
          eMaxSupremImage: AppImages.teethEMaxSuprem21,
          //
        );

      //

      case '22':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth22,
          //
          pFMLaserImage: AppImages.teethPFMLaser22,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay22,
          eMaxPressImage: AppImages.teethEMaxPress22,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy22,
          zirconLayeredImage: AppImages.teethZirconLayered22,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax22,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior22,
          eMaxSupremImage: AppImages.teethEMaxSuprem22,
          //
        );

      //

      case '23':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth23,
          //
          pFMLaserImage: AppImages.teethPFMLaser23,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay23,
          eMaxPressImage: AppImages.teethEMaxPress23,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy23,
          zirconLayeredImage: AppImages.teethZirconLayered23,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax23,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior23,
          eMaxSupremImage: AppImages.teethEMaxSuprem23,
          //
        );

      //

      case '24':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth24,
          //
          pFMLaserImage: AppImages.teethPFMLaser24,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay24,
          eMaxPressImage: AppImages.teethEMaxPress24,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy24,
          zirconLayeredImage: AppImages.teethZirconLayered24,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax24,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior24,
          eMaxSupremImage: AppImages.teethEMaxSuprem24,
          //
        );

      //

      case '25':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth25,
          //
          pFMLaserImage: AppImages.teethPFMLaser25,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay25,
          eMaxPressImage: AppImages.teethEMaxPress25,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy25,
          zirconLayeredImage: AppImages.teethZirconLayered25,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax25,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior25,
          eMaxSupremImage: AppImages.teethEMaxSuprem25,
          //
        );

      //

      case '26':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth26,
          //
          pFMLaserImage: AppImages.teethPFMLaser26,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay26,
          eMaxPressImage: AppImages.teethEMaxPress26,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy26,
          zirconLayeredImage: AppImages.teethZirconLayered26,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax26,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior26,
          eMaxSupremImage: AppImages.teethEMaxSuprem26,
          //
        );

      //

      case '27':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth27,
          //
          pFMLaserImage: AppImages.teethPFMLaser27,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay27,
          eMaxPressImage: AppImages.teethEMaxPress27,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy27,
          zirconLayeredImage: AppImages.teethZirconLayered27,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax27,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior27,
          eMaxSupremImage: AppImages.teethEMaxSuprem27,
          //
        );

      //

      case '28':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth28,
          //
          pFMLaserImage: AppImages.teethPFMLaser28,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay28,
          eMaxPressImage: AppImages.teethEMaxPress28,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy28,
          zirconLayeredImage: AppImages.teethZirconLayered28,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax28,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior28,
          eMaxSupremImage: AppImages.teethEMaxSuprem28,
          //
        );

      //

      case '38':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth38,
          //
          pFMLaserImage: AppImages.teethPFMLaser38,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay38,
          eMaxPressImage: AppImages.teethEMaxPress38,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy38,
          zirconLayeredImage: AppImages.teethZirconLayered38,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax38,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior38,
          eMaxSupremImage: AppImages.teethEMaxSuprem38,
          //
        );

      //

      case '37':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth37,
          //
          pFMLaserImage: AppImages.teethPFMLaser37,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay37,
          eMaxPressImage: AppImages.teethEMaxPress37,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy37,
          zirconLayeredImage: AppImages.teethZirconLayered37,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax37,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior37,
          eMaxSupremImage: AppImages.teethEMaxSuprem37,
          //
        );

      //

      case '36':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth36,
          //
          pFMLaserImage: AppImages.teethPFMLaser36,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay36,
          eMaxPressImage: AppImages.teethEMaxPress36,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy36,
          zirconLayeredImage: AppImages.teethZirconLayered36,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax36,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior36,
          eMaxSupremImage: AppImages.teethEMaxSuprem36,
          //
        );

      //

      case '35':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth35,
          //
          pFMLaserImage: AppImages.teethPFMLaser35,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay35,
          eMaxPressImage: AppImages.teethEMaxPress35,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy35,
          zirconLayeredImage: AppImages.teethZirconLayered35,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax35,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior35,
          eMaxSupremImage: AppImages.teethEMaxSuprem35,
          //
        );

      //

      case '34':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth34,
          //
          pFMLaserImage: AppImages.teethPFMLaser34,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay34,
          eMaxPressImage: AppImages.teethEMaxPress34,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy34,
          zirconLayeredImage: AppImages.teethZirconLayered34,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax34,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior34,
          eMaxSupremImage: AppImages.teethEMaxSuprem34,
          //
        );

      //

      case '33':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth33,
          //
          pFMLaserImage: AppImages.teethPFMLaser33,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay33,
          eMaxPressImage: AppImages.teethEMaxPress33,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy33,
          zirconLayeredImage: AppImages.teethZirconLayered33,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax33,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior33,
          eMaxSupremImage: AppImages.teethEMaxSuprem33,
          //
        );

      //

      case '32':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth32,
          //
          pFMLaserImage: AppImages.teethPFMLaser32,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay32,
          eMaxPressImage: AppImages.teethEMaxPress32,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy32,
          zirconLayeredImage: AppImages.teethZirconLayered32,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax32,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior32,
          eMaxSupremImage: AppImages.teethEMaxSuprem32,
          //
        );

      //

      case '31':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth31,
          //
          pFMLaserImage: AppImages.teethPFMLaser31,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay31,
          eMaxPressImage: AppImages.teethEMaxPress31,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy31,
          zirconLayeredImage: AppImages.teethZirconLayered31,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax31,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior31,
          eMaxSupremImage: AppImages.teethEMaxSuprem31,
          //
        );

      //

      case '41':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth41,
          //
          pFMLaserImage: AppImages.teethPFMLaser41,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay41,
          eMaxPressImage: AppImages.teethEMaxPress41,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy41,
          zirconLayeredImage: AppImages.teethZirconLayered41,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax41,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior41,
          eMaxSupremImage: AppImages.teethEMaxSuprem41,
          //
        );

      //

      case '42':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth42,
          //
          pFMLaserImage: AppImages.teethPFMLaser42,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay42,
          eMaxPressImage: AppImages.teethEMaxPress42,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy42,
          zirconLayeredImage: AppImages.teethZirconLayered42,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax42,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior42,
          eMaxSupremImage: AppImages.teethEMaxSuprem42,
          //
        );

      //

      case '43':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth43,
          //
          pFMLaserImage: AppImages.teethPFMLaser43,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay43,
          eMaxPressImage: AppImages.teethEMaxPress43,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy43,
          zirconLayeredImage: AppImages.teethZirconLayered43,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax43,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior43,
          eMaxSupremImage: AppImages.teethEMaxSuprem43,
          //
        );

      //

      case '44':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth44,
          //
          pFMLaserImage: AppImages.teethPFMLaser44,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay44,
          eMaxPressImage: AppImages.teethEMaxPress44,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy44,
          zirconLayeredImage: AppImages.teethZirconLayered44,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax44,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior44,
          eMaxSupremImage: AppImages.teethEMaxSuprem44,
          //
        );

      //

      case '45':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth45,
          //
          pFMLaserImage: AppImages.teethPFMLaser45,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay45,
          eMaxPressImage: AppImages.teethEMaxPress45,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy45,
          zirconLayeredImage: AppImages.teethZirconLayered45,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax45,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior45,
          eMaxSupremImage: AppImages.teethEMaxSuprem45,
          //
        );

      //

      case '46':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth46,
          //
          pFMLaserImage: AppImages.teethPFMLaser46,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay46,
          eMaxPressImage: AppImages.teethEMaxPress46,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy46,
          zirconLayeredImage: AppImages.teethZirconLayered46,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax46,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior46,
          eMaxSupremImage: AppImages.teethEMaxSuprem46,
          //
        );

      //

      case '47':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth47,
          //
          pFMLaserImage: AppImages.teethPFMLaser47,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay47,
          eMaxPressImage: AppImages.teethEMaxPress47,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy47,
          zirconLayeredImage: AppImages.teethZirconLayered47,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax47,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior47,
          eMaxSupremImage: AppImages.teethEMaxSuprem47,
          //
        );

      //

      case '48':
        return checkRequiredToothImageMethod(
          typeProduct: typeProductToChoseColor,
          whiteImage: AppImages.teeth48,
          //
          pFMLaserImage: AppImages.teethPFMLaser48,
          inlayAndonlayImage: AppImages.teethinlayAndOnlay48,
          eMaxPressImage: AppImages.teethEMaxPress48,
          zirconFullAnatomyImage: AppImages.teethZirconFullAnatomy48,
          zirconLayeredImage: AppImages.teethZirconLayered48,
          zirconFacingEMaxImage: AppImages.teethZirconFacingEMax48,
          zirconPrettauAnteriorImage: AppImages.teethZirconPrettauAnterior48,
          eMaxSupremImage: AppImages.teethEMaxSuprem48,
          //
        );

      //
      default:
        return AppImages.teeth18;

      //
    } //end Swith
  } // end Method Image Tooth To TypeProduct

  static String checkRequiredToothImageMethod({
    required String typeProduct,
    required String whiteImage,
    required String pFMLaserImage,
    required String inlayAndonlayImage,
    required String eMaxPressImage,
    required String zirconFullAnatomyImage,
    required String zirconLayeredImage,
    required String zirconFacingEMaxImage,
    required String zirconPrettauAnteriorImage,
    required String eMaxSupremImage,
  }) {
    //
    switch (typeProduct) {
      //
      /*
         ,
    'Temporary ',
  
      */

      //
      case 'PFM laser':
        return pFMLaserImage;
      //
      case 'Inlay&onlay':
        return inlayAndonlayImage;
      //

      case 'e-max press':
        return eMaxPressImage;
      //

      case 'Zircon full anatomy':
        return zirconFullAnatomyImage;
      //

      case 'Zircon layered':
        return zirconLayeredImage;
      //

      case 'Zircon facing e-max':
        return zirconFacingEMaxImage;
      //

      case 'Zircon prettau anterior':
        return zirconPrettauAnteriorImage;
      //

      case 'e-max suprem':
        return eMaxSupremImage;
      //

      // case :
      //   return ;
      //
      default:
        return whiteImage;
    } //end Switch
    //
  } // end Method RequeiredToothImage

  //
  // Images According to TypeProduct
  //
  static Color colorCircleToothAccordingToTypeProduct({
    required String numberTooth,
    required String typeProductToChoseColor,
  }) {
    //

    switch (numberTooth) {
      //

      case '18':
        return colorOfCircleTooth(typeProductToChoseColor);
      //

      case '17':
        return colorOfCircleTooth(typeProductToChoseColor);
      //

      case '16':
        return colorOfCircleTooth(typeProductToChoseColor);
      //

      case '15':
        return colorOfCircleTooth(typeProductToChoseColor);
      //

      case '14':
        return colorOfCircleTooth(typeProductToChoseColor);
      //

      case '13':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '12':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '11':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '21':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '22':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '23':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '24':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '25':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '26':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '27':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '28':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '38':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '37':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '36':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '35':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '34':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '33':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '32':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '31':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '41':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '42':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '43':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '44':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '45':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '46':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '47':
        return colorOfCircleTooth(typeProductToChoseColor);

      //

      case '48':
        return colorOfCircleTooth(typeProductToChoseColor);

      //
      default:
        return AppColors.greyTeethDetailsOrder;

      //
    } //end Switch
  } // end Method Color Circle Tooth According To TypeProduct

  // Color of Circle Tooth

  static Color colorOfCircleTooth(String typeProduct) {
    //
    switch (typeProduct) {
      //

      //
      case 'PFM laser':
        return AppColors.pfmLaser;
      //
      case 'Inlay&onlay':
        return AppColors.inlayAndonlay;
      //

      case 'e-max press':
        return AppColors.eMaxPress;
      //

      case 'Zircon full anatomy':
        return AppColors.zirconFullAnatomy;

      //
      case 'Zircon layered':
        return AppColors.zirconLayered;

      //
      case 'Zircon facing e-max':
        return AppColors.zirconfacingEmax;

      //
      case 'Zircon prettau anterior':
        return AppColors.zirconPrettauAnterior;

      //

      //
      case 'e-max suprem':
        return AppColors.eMaxSuprem;

      //
      //
      case 'Temporary':
        return AppColors.temporary;

      //
      default:
        return AppColors.greyTeethDetailsOrder;
    } // end Switch
  }

  // End Class
}
