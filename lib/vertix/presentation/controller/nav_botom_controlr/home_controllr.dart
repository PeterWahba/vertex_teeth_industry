import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/error/failure_text.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/core/utils/string_shared_prefs.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_images_baner_ads_case.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_session_user_case.dart';

import '../../../../core/utils/setting_sevices.dart';

class HomePageController extends GetxController
    with StateMixin<HomePageController> {
  //

  final GetCustomerNameOfSessionUserUseCase getCustomerNameOfSessionUserUseCase;
  final GetImagesBanerAdsUseCase getImagesBanerAdsUseCase;

  HomePageController(
      {required this.getCustomerNameOfSessionUserUseCase,
      required this.getImagesBanerAdsUseCase});

  @override
  void onInit() async {
    //
    super.onInit();
    //
    await getImagesBannerAdsMethod();
    await getNameCustomerForSessionUser();
    //
    // change(state, status: RxStatus.error('Error'));
    //

    //
    // pageController = PageController();
  }

  //
  @override
  void onClose() {
    //
    super.onClose();
    //
    // pageController.dispose();
  }

  //
  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  // Variable
  // ===========================================================================

  // late PageController pageController;

  //
  // List String

  // final List<String> _listSateOrder = [
  //   'تم الموافقة',
  //   'معلق الطلب',
  //   'تم الالغاء',
  //   'فارغ',
  // ];

  List<String> _listImages = [];

  //  Intger

  //

  int _activeDotIndex = 0;

  //

  // Get Variable
  // ===========================================================================

  // List<String> get listSateOrder => _listSateOrder;

  // Get Lists
  // ===============================
  // ===============================

  List<String> get listImages => _listImages;

  // Get Intger
  // ===============================
  // ===============================
  //

  //
  int get activeDotIndex => _activeDotIndex;

  // Method
  // ===========================================================================

  // Methods Deals with Screen
  // ===========================================================================
  //

  changeActiveDotIndex(int index) {
    //
    _activeDotIndex = index;
    //
    update();

    //
  }

  // Method Deals With Backend
  // ===========================================================================

  Future<void> getNameCustomerForSessionUser() async {
    //

    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    //
    if (sidTokenShared == null) {
      //
      return;
    }

    //
    final reslt = await getCustomerNameOfSessionUserUseCase.call(
        sidToekn: sidTokenShared);

    //

    reslt.fold(
      (failure) {
        //
        // do Nothing

        //
      },
      (success) async {
        //
        //
        await servicesClass.sharedPrefs
            .setString(NameKeySharedPreferns.nameCustomerSessionUser, success);
        //

        //
        servicesClass.sharedPrefs.reload();
        //
      },
    );

    // end Method NameCustomer Session User
  }

  // Get ImagesBanner Ads

  Future<void> getImagesBannerAdsMethod() async {
    //
    change(state, status: RxStatus.loading());
    //

    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    //
    if (sidTokenShared == null) {
      //
      return;
    }

    //
    final reslt = await getImagesBanerAdsUseCase.call(sidToekn: sidTokenShared);

    //
    reslt.fold(
      (failure) {
        //
        String message = mapFailureToMessage(failure);
        //
        if (message == IMAGES_BANNER_ADS_EMPTY) {
          //
          change(state, status: RxStatus.empty());
          //
          return;
        }
        //
        change(state, status: RxStatus.error(message));

        //
        // end Failure
      },
      (success) {
        //
        _listImages = success;
        //
        //
        //
        change(state, status: RxStatus.success());
        // end Success
      },
    );
    // end method get imagesBanner Ads
  }
  // End HomePage Controller
}
