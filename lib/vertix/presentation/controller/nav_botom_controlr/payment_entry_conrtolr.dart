import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/core/utils/string_shared_prefs.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_payment_entry_case.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../domain/entities/payment_entry_user_entities.dart';

class PaymentEntryUserController extends GetxController
    with StateMixin<PaymentEntryUserController> {
  //

  final GetPaymentEntryUserUseCase getPaymentEntryUserUseCase;

  PaymentEntryUserController({required this.getPaymentEntryUserUseCase});
  //
  @override
  void onInit() async {
    super.onInit();
    //
    await getAllPaymentEntryUserMethods();
  }
  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  //
  //
  // variable
  // ===========================================================================
  //
  //  Lists
  List<PaymentEnteryUserEntities> _listPaymentEntry = [];

  // Get variable
  // ===========================================================================
  //

  // Get Variable
  //
  List<PaymentEnteryUserEntities> get listPaymentEntry => _listPaymentEntry;
  // Method
  // ===========================================================================
  //
  // Methods deals with Screen
  // ===========================================================================
  //
  // Method deals with backend
  // ===========================================================================

  //
  Future<void> getAllPaymentEntryUserMethods() async {
    //
    change(state, status: RxStatus.loading());
    //
    String? sidTokenShare =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    //
    if (sidTokenShare == null) {
      //
      return;
      //
    }

    //
    final reslt =
        await getPaymentEntryUserUseCase.call(sidToekn: sidTokenShare);

    //
    reslt.fold(
      (failure) {
        // handle failure
        String message = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(message));
      },
      (success) {
        // handle success
        _listPaymentEntry = success;

        //
        change(state, status: RxStatus.success());
      },
    );

    // end method get payment entry
  }

  // end Controller
}
