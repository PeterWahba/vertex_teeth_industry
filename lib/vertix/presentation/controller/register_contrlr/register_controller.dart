import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/register_user_case.dart';

import '../../../../core/error/methods.dart';
import '../../../../core/utils/setting_sevices.dart';
import '../../../../core/utils/string_shared_prefs.dart';

class RegisterController extends GetxController
    with StateMixin<RegisterController> {
  //
  final RegisterUseCase registerUseCase;

  RegisterController({required this.registerUseCase});
  //

  @override
  void onInit() {
    //
    change(state, status: RxStatus.success());
    //

    super.onInit();
    //
    formRegister = GlobalKey();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  void onClose() {
    //
    super.onClose();
    //
    emailTextController.clear();
    passwordTextController.clear();
  }

  //
  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  // Varaible
  // ==================================================

  late GlobalKey<FormState> formRegister;
  //
  late TextEditingController emailTextController;
  //
  late TextEditingController passwordTextController;

  // Booler

  bool _showPassword = true;

  // Get Varaible
  // ==================================================

  bool get showPassword => _showPassword;

  //  Method
  // ==================================================

  // Methods Boolen

  changeShowPassword() {
    //
    _showPassword = !_showPassword;
    //
    update();
    //
  }

  // Get Method
  // ==================================================

  // Methods Deals with Backen
  // ===================================================

  Future<void> registerLogInUser() async {
    //
    change(state, status: RxStatus.loading());
    //
    final reslt = await registerUseCase.call(
      userEmail: emailTextController.text.trim(),
      userPassWord: passwordTextController.text.trim(),
    );
    //

    //

    //
    reslt.fold(
      (failure) {
        //
        String message = mapFailureToMessage(failure);

        change(state, status: RxStatus.error(message));
        //

        // End Failure
      },
      (userLoged) async {
        //
        //

        //
        change(state, status: RxStatus.success());

        //
        await servicesClass.sharedPrefs
            .setString(NameKeySharedPreferns.userSid, userLoged.sidToken);

        //
        await servicesClass.sharedPrefs.setString(
            NameKeySharedPreferns.doctorFullName, userLoged.doctorFullName);

        //
        await servicesClass.sharedPrefs
            .setString(NameKeySharedPreferns.emailUser, userLoged.emailUser);

        //

        await servicesClass.sharedPrefs.reload();

        //
        //
        //
        //

        // End Success
      },
    );

    // End Register
  }
}
