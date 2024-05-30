import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  //

  @override
  void onInit() {
    //
    super.onInit();
    //
    pageController = PageController();
  }

  //
  @override
  void onClose() {
    //
    super.onClose();
    //
    pageController.dispose();
  }
  // Variable
  // ===========================================================================

  late PageController pageController;

  //
  // List String

  final List<String> _listSateOrder = [
    'تم الموافقة',
    'معلق الطلب',
    'تم الالغاء',
    'فارغ',
  ];

  // Get Variable
  // ===========================================================================

  List<String> get listSateOrder => _listSateOrder;

  // Method
  // ===========================================================================

  // Methods Deals with Screen
  // ===========================================================================

  // Method Deals With Backend
  // ===========================================================================

  // End HomePage Controller
}
