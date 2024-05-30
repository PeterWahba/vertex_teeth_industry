import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController {
  //

  @override
  void onInit() {
    //
    super.onInit();
    //
    indicatorController = PageController();

    // End OnInit
  }

  // Variable
  // ====================================================

  late final PageController indicatorController;

  // End Class Controller
}
