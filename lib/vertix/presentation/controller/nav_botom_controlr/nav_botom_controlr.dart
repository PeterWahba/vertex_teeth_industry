import 'dart:ffi';

import 'package:get/get.dart';

class NavBottomController extends GetxController {
  //

  // Variable
  // ===========================================================================

  // int

  int _currentIndex = 3;

  //
  //

  int _currntindexListOrderScrn = 0;
  //

  int _currntindexHomeScrn = 0;
  //

  int _currntindexProfileScrn = 0;
  //

  int _currntindexPaymentScrns = 0;

  // Boolen

  bool _isHomeScrn = false;

  // Get Variables
  // ===========================================================================

  // Boolen
  // ===============
  bool get isHomeScrn => _isHomeScrn;

  int get currentIndex => _currentIndex;

//

  int get currntindexHomeScrn => _currntindexHomeScrn;

//

  int get currntindexListOrderScrn => _currntindexListOrderScrn;

//

  int get currntindexPaymentScrns => _currntindexPaymentScrns;

//

  int get currntindexProfileScrn => _currntindexProfileScrn;

  // Methods
  // ===========================================================================

  //

  changeIsHomeScrn(bool newValue) {
    //
    _isHomeScrn = newValue;
    //
    update();
  }

  changeCurrnentIndexHomeScreen(int newIndex) {
    //

    _currntindexHomeScrn = newIndex;
    //
    update();

    //
  }

  //

  changeCurrnentIndexProfileScreen(int newIndex) {
    //

    _currntindexProfileScrn = newIndex;
    //
    update();

    //
  }

  //

  changeCurrnentIndexListOrderScreen(int newIndex) {
    //

    _currntindexListOrderScrn = newIndex;
    //
    update();

    //
  }

  //

  changeCurrentIndexPaymentEntryScreens(int newIndex) {
    //

    _currntindexPaymentScrns = newIndex;
    //
    update();

    //
  }

  newIndexSetter(int index) {
    //
    _currentIndex = index;
    //
    update();
    //
  }

  // End Class Controller
}
