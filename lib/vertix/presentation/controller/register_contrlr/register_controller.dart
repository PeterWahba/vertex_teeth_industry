import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/register_user_case.dart';

import '../../../../core/error/methods.dart';

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

  // Varaible
  // ==================================================

  late GlobalKey<FormState> formRegister;
  //
  late TextEditingController emailTextController;
  //
  late TextEditingController passwordTextController;

  // Booler

  bool _showPassword = false;

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
    final reslt = await registerUseCase.call(userEmail: '', userPassWord: '');
    //

    //

    //
    reslt.fold(
      (failure) {
        //
        String message = mapFailureToMessage(failure);

        change(state, status: RxStatus.error(message));
        //
        print('\n');
        print('====================================================');
        print('\n');
        print('Failure register is $message');
        print('\n');
        print('====================================================');
        print('\n');
        //

        // End Failure
      },
      (userLoged) async {
        //
        //

        print('\n');
        print('====================================================');
        print('\n');
        print('Success register ');
        print('\n');
        print('====================================================');
        print('\n');

        //

        //
        //

        // End Success
      },
    );

    // End Register
  }
}
