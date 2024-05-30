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

  int _currntindexProfileScrn = 0;

  // Get Variables
  // ===========================================================================

  int get currentIndex => _currentIndex;

//

  int get currntindexListOrderScrn => _currntindexListOrderScrn;

//

  int get currntindexProfileScrn => _currntindexProfileScrn;

  // Methods
  // ===========================================================================

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

  newIndexSetter(int index) {
    //
    _currentIndex = index;
    //
    update();
    //
  }

  // End Class Controller
}
