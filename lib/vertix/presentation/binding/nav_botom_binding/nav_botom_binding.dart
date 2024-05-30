import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import '../../controller/nav_botom_controlr/home_controllr.dart';

class NavBotomBinding implements Bindings {
  @override
  void dependencies() {
    //
    // Controller
    Get.lazyPut<NavBottomController>(
      () => NavBottomController(),
    );

    //
    // Controller
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
    //

    // End Method
  }

  // End Class
  //
}
