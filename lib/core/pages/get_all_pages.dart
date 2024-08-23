import 'package:get/get.dart';
import 'package:vertex_teeth_industry/onBoarding/screens/on_board_scrn.dart';
import '../../vertix/presentation/binding/nav_botom_binding/nav_botom_binding.dart';
import '../../vertix/presentation/binding/register_binding/register_binding.dart';
import '../../vertix/presentation/middle_where/auth_middle.dart';
import '../../vertix/presentation/screens/nav_botom_scrn.dart';
import '../../vertix/presentation/screens/privacy_policy_and_terms_of_use_scrn.dart';
import '../../vertix/presentation/screens/register_scrn.dart';
import '../../vertix/presentation/screens/splash/splash_scrn.dart';
import 'pages_name.dart';

class GetPagesListClass {
  //
  static List<GetPage<dynamic>>? getPagesClass = [
    //
    //
    //
    //  Privacy  Policy  Scrn
    // ================================
    //
    GetPage(
      transition: Transition.fade,
      // binding: RegisterBinding(),
      name: AllPagesName.privacyPolicyScrn,
      fullscreenDialog: true,
      page: () => const PrivacyPolicyAndTermsOfUseScreen(),
    ),
    //
    GetPage(
      // transition: Transition.fade,
      name: AllPagesName.splashCustomScrn,
      // fullscreenDialog: true,
      page: () => const SplashCustomScreen(),
    ),
    //
    GetPage(
      // transition: Transition.fade,
      name: AllPagesName.onBoardScren,
      // fullscreenDialog: true,
      middlewares: [AuthMiddleWhere()],
      page: () => OnBoardScreen(),
    ),

    //
    GetPage(
      transition: Transition.fade,
      binding: RegisterBinding(),
      name: AllPagesName.registerScrn,
      fullscreenDialog: true,
      page: () => RegisterScreen(),
    ),

    // Nav Bottom
    GetPage(
      transition: Transition.fade,
      binding: NavBotomBinding(),
      name: AllPagesName.navBotomScrn,
      fullscreenDialog: true,
      page: () => NavBottomScreen(),
    ),

    //

    // end List
  ];
}
