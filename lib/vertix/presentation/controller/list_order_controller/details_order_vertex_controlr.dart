import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertix/core/error/methods.dart';
import 'package:vertix/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertix/vertix/domain/entities/tooth_history_log_entities.dart';
import 'package:vertix/vertix/domain/usecase/details_order_vertex_case.dart';
import 'package:vertix/vertix/domain/usecase/reject_order_with_mesg_case.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../../core/utils/string_shared_prefs.dart';

class DetailsOrderVertexController extends GetxController
    with StateMixin<DetailsOrderVertexController> {
  //
  final GetDetailsOrderVertexUseCase getDetailsOrderVertexUseCase;
  //
  final RejectOrderWithMessagUseCase rejectOrderWithMessagUseCase;

  //
  DetailsOrderVertexController({
    required this.getDetailsOrderVertexUseCase,
    required this.rejectOrderWithMessagUseCase,
  });

  //
  @override
  void onInit() {
    //
    super.onInit();
    //
    change(state, status: RxStatus.loading());
    //
    messageRejectController = TextEditingController();
  }

  //
  @override
  void dispose() {
    super.dispose();
    //
    messageRejectController.dispose();
  }

  //
  late TextEditingController messageRejectController;

  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  //
  // Variable
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  // String
  // =========================

  final String _errorSidToken =
      'يوجد خطأ في عملية تسجيل الدخول ، قم بتسجيل  من جديد';

  //
  String _idOrder = '';

  //

  List<ToothHistoryLogEntities> _listToothHistoryLog = [];

  //
  DetailsOrderVertexEntities? _detailsOrderVertexEntities;

  //
  // Get Variable
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================
  DetailsOrderVertexEntities? get detailsOrderVertexEntities =>
      _detailsOrderVertexEntities;

  //
  String get idOrderCont => _idOrder;

  //
  // Methods Deals with Screen
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================
  // Change Image Color According to ProductType
  //
  changeImageToothAccordingToProductType(
      {required String numberTooth,
      String? isCircle,
      required Function(
              {required String numberTooth,
              required String typeProductToChoseColor})
          functionToothimageOrColor}) {
    //
    //

    for (ToothHistoryLogEntities toothHistoryLogEntities
        in _listToothHistoryLog) {
      //
      List<String> listToothGroup =
          toothHistoryLogEntities.teethGroupNamesString.split(',');
      //
      //
      //
      //
      for (String numbrToothToCompare in listToothGroup) {
        //
        // check if Tooth Exist
        //
        if (numbrToothToCompare == numberTooth) {
          //
          //  check which Product Type is choosen  To chose The tooth image
          //
          /*
    'Temporary'   
            */
          //

          if (toothHistoryLogEntities.tempoary > 0 && isCircle != null) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth, typeProductToChoseColor: 'Temporary');
          } else
          //

          if (toothHistoryLogEntities.pfmLaser > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth, typeProductToChoseColor: 'PFM laser');
          } else
          //

          if (toothHistoryLogEntities.inlayAndOnlay > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'Inlay&onlay');
          } else
          //

          if (toothHistoryLogEntities.eMaxPress > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'e-max press');
          } else
          //

          if (toothHistoryLogEntities.zicronFullAnatomy > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'Zircon full anatomy');
          } else
          //

          if (toothHistoryLogEntities.zicronLayered > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'Zircon layered');
          } else
          //

          if (toothHistoryLogEntities.zicronFacingEMax > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'Zircon facing e-max');
          } else
          //

          if (toothHistoryLogEntities.zicronPrettauAnterior > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'Zircon prettau anterior');
          } else
          //

          if (toothHistoryLogEntities.eMaxSuprem > 0) {
            //

            //
            return functionToothimageOrColor(
                numberTooth: numberTooth,
                typeProductToChoseColor: 'e-max suprem');
          }
        } // end (If) to Check if Tooth exist
        //
        //  If Tooth Dont exist then show the white one
      } // end (For) of Compare the sended Tooth
    } // end Main For
    //
    //
    //
    return functionToothimageOrColor(
        numberTooth: numberTooth, typeProductToChoseColor: '');
    //
    // return AppImages.profileNavBotomIconPurple;
  } // end method changeImageToothAccordingToProductType

  //
  // Methods Deals with Backend
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  Future<void> getDetailsOrderVertexMethod(String idOrder) async {
    //
    change(state, status: RxStatus.loading());

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
    final reslt = await getDetailsOrderVertexUseCase.call(
        sidToekn: sidTokenShared, idOrder: idOrder);

    //
    reslt.fold(
      (failure) {
        //
        String message = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(message));
        //
      }, //end Failure
      (success) {
        //
        _detailsOrderVertexEntities = success;

        //
        // print('\n');
        // print(
        //     'The controller of Details Order is $_detailsOrderVertexEntities');
        // print('\n');
        // print(
        //     'The controller of Details Order Of ND Shade Guide is ${_detailsOrderVertexEntities?.ndShadeGuide ?? 'Null'}');
        // print('\n');
        //
        _listToothHistoryLog = success.listToothHistoryLogEntites;
        //
        _idOrder = success.idOrder;

        //
        //
        change(state, status: RxStatus.success());
        //
      }, //end Succcess
    );

    // end Method get Details Order Vertex
  }

  //
  // Reject Order With Message
  //

  Future<void> rejectOrderWithMessageMethod() async {
    //
    //
    change(state, status: RxStatus.loading());

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
    if (_idOrder == '') {
      //
      change(state, status: RxStatus.error('UnExpected Error'));

      //
      return;
    }

    //
    if (messageRejectController.text.isEmpty ||
        messageRejectController.text == '') {
      //
      change(state, status: RxStatus.error('يجب ملئ حقل الرسالة اولا'));
      //
      return;

      //
    }

    final relst = await rejectOrderWithMessagUseCase.call(
        sidToekn: sidTokenShared,
        idOrder: _idOrder,
        messageReject: messageRejectController.text);

    //
    relst.fold(
      (failure) {
        //
        String mesage = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(mesage));

        //
      }, //end Failure
      (success) {
        //

        //
        messageRejectController.text = '';

        //
        print('\n');
        print('Success add rejected message');
        print('\n');
        //
        change(state, status: RxStatus.success());

        //
      }, // end Success
    );
  }

  // end Class Controller
}
