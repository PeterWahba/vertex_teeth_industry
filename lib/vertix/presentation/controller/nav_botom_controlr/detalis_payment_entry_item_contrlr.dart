import 'package:get/get.dart';
import 'package:vertix/core/error/methods.dart';
import 'package:vertix/core/utils/string_shared_prefs.dart';
import 'package:vertix/vertix/domain/entities/details_payment_entry_entities.dart';
import 'package:vertix/vertix/domain/usecase/get_details_payment_entry.dart';

import '../../../../core/utils/setting_sevices.dart';

class DetailsPaymentEntryItemController extends GetxController
    with StateMixin<DetailsPaymentEntryItemController> {
  //

  final GetDetailsPaymentEntryUseCase getDetailsPaymentEntryUseCase;

  DetailsPaymentEntryItemController(
      {required this.getDetailsPaymentEntryUseCase});

  //
  @override
  void onInit() {
    //
    super.onInit();
    //

    //
    // String? idNamePaymentArgument = Get.arguments[''];

    // //
    // if (idNamePaymentArgument != null) {
    //   //
    //   getDetailsPaymentEntryMethod(idNamePaymentArgument);
    // } else {
    //   //
    //   change(state, status: RxStatus.error('No Id Founded'));
    // }
  }
  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  // Varialble
  // ===========================================================================
  //

  int _indexOfListPaymentEntry = 0;
  //
  // String

  final String _errorSidToken =
      'يوجد خطأ في عملية تسجيل الدخول ، قم بتسجيل  من جديد';

  //
  DetailesPaymentEntryEntities? _detailesPaymentEntryEntities;

  //

  // Get Variables
  // ===========================================================================
  //

  // Intger
  // ==============
  int get indexOfListPaymentEntry => _indexOfListPaymentEntry;

  DetailesPaymentEntryEntities? get detailesPaymentEntryEntities =>
      _detailesPaymentEntryEntities;

  // Methodes Deals with Screen
  // ===========================================================================

  changeIndexListPaymentEntry(int newIndex) {
    //
    _indexOfListPaymentEntry = newIndex;
    //
    update();
  }

  // Methods Deals with Backend
  // ===========================================================================

  //
  Future<void> getDetailsPaymentEntryMethod(String idNamePaymen) async {
    //

    change(state, status: RxStatus.loading());

    //

    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);
    //
    //
    if (sidTokenShared == null) {
      //
      change(state, status: RxStatus.error(_errorSidToken));
      //
      return;
      // end IF SID Token is Null
    }

    //

    final reslt = await getDetailsPaymentEntryUseCase.call(
        sidToekn: sidTokenShared, idNamePayment: idNamePaymen);

    //
    reslt.fold(
      (failure) {
        // Handle Failure
        String message = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(message));
        //
        // end Falure
      },

      (success) {
        // Handle Success
        //
        _detailesPaymentEntryEntities = success;
        //
        change(state, status: RxStatus.success());
        // change(state, status: RxStatus.error(_errorSidToken));
      }, //end Success
    );
  }

  // End Method Controller
}
