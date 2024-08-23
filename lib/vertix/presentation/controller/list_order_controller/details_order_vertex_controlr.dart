import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/comment_entites.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/details_order_vertex_case.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/comments/get_comment_on_ordr_case.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/reject_order_with_mesg_case.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../../core/utils/string_shared_prefs.dart';
import '../../../domain/usecase/comments/add_comment_order_case.dart';

class DetailsOrderVertexController extends GetxController
    with StateMixin<DetailsOrderVertexController> {
  //
  final GetDetailsOrderVertexUseCase getDetailsOrderVertexUseCase;
  //
  final RejectOrderWithMessagUseCase rejectOrderWithMessagUseCase;
  final GetCommentOnOrdrUseCase getCommentOnOrdrUseCase;
  final AddCommentOrderUseCase addCommentOrderUseCase;

  //
  DetailsOrderVertexController({
    required this.getDetailsOrderVertexUseCase,
    required this.rejectOrderWithMessagUseCase,
    required this.getCommentOnOrdrUseCase,
    required this.addCommentOrderUseCase,
  });

  //
  @override
  void onInit() async {
    //
    super.onInit();
    //
    change(state, status: RxStatus.loading());
    //
    //
    await servicesClass.sharedPrefs.reload();

    //
    messageRejectController = TextEditingController();
    commentController = TextEditingController();

    await initSherdPrefsVariable();

    //
    if (_sidTokenShared == null) {
      //
      change(state, status: RxStatus.error(_errorSidToken));
      //
      // end IF SID Token is Null
    }
  }

  //
  @override
  void dispose() {
    super.dispose();
    //
    messageRejectController.dispose();
    commentController.dispose();
  }

  //
  late TextEditingController messageRejectController;
  late TextEditingController commentController;

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

  String _errorMesgeAddComent = '';
  String _errorMesgeGetComent = '';

  //
  String _idOrder = '';

  String? _sidTokenShared;
  String? _emailSesionUsrShared;

  // Boolen
  // ---------------------------------------------------------------------------

  bool _loadingGetComment = false;
  bool _loadingAddComment = false;

  // Entites
  // ---------------------------------------------------------------------------
  //

  // Comments

  List<CommentOnOrderEntities> _listCommentsOnOrdr = [];

  List<ToothHistoryLogEntities> _listToothHistoryLog = [];

  //
  DetailsOrderVertexEntities? _detailsOrderVertexEntities;

  //
  // Get Variable
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  // Get Entites
  // ===========================================================================

  //  Details Order
  DetailsOrderVertexEntities? get detailsOrderVertexEntities =>
      _detailsOrderVertexEntities;

  // Comments
  List<CommentOnOrderEntities> get listCommentsOnOrdr => _listCommentsOnOrdr;

  //
  String get idOrderCont => _idOrder;
  String get errorMesgeAddComent => _errorMesgeAddComent;
  String get errorMesgeGetComent => _errorMesgeGetComent;
  String? get emailSesionUsrShared => _emailSesionUsrShared;

  // Get Boolen
  // ---------------------------------------------------------------------------

  bool get loadingGetComment => _loadingGetComment;
  bool get loadingAddComment => _loadingAddComment;

  //
  // Methods Deals with Screen
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  Future<void> initSherdPrefsVariable() async {
    //
    await servicesClass.sharedPrefs.reload();
    //
    _sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    _emailSesionUsrShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.emailUser);
    //
  }

  Future<void> getDetailsAndCommentsOrderByID(String idOrder) async {
    //
    _idOrder = idOrder;
    //
    await getDetailsOrderVertexMethod(idOrder);
    await getCommentsOnOrdrMethod(idOrder);
  }

  //
  Future<void> checkBeforeAddComentMethod() async {
    //
    if (_idOrder != '') {
      if (checkAddCommentOrdrField()) {
        //
        await addCommentToOrdermehod();
      }
    } else {
      _errorMesgeAddComent = 'Problem with Id Order';
      update();
    }
    // end method Check and Add Comment
  }

  //
  bool checkAddCommentOrdrField() {
    //
    if (commentController.text.isEmpty || commentController.text == '') {
      //
      _errorMesgeAddComent = 'يجب اضافة نص اولا';
      update();
      return false;
    } else {
      //
      _errorMesgeAddComent = '';
      update();

      return true;
    }
  }

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

    //

    //
    final reslt = await getDetailsOrderVertexUseCase.call(
        sidToekn: _sidTokenShared!, idOrder: idOrder);

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
        sidToekn: _sidTokenShared!,
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
   
        //
        change(state, status: RxStatus.success());

        //
      }, // end Success
    );
  }

  Future<void> getCommentsOnOrdrMethod(String idOrder) async {
    //
    // change(state, status: RxStatus.loading());
    _loadingGetComment = true;
    update();
    //

    //
    final reslt = await getCommentOnOrdrUseCase.call(
        sidToekn: _sidTokenShared!, idOrder: idOrder);

    //
    reslt.fold(
      (failure) {
        //
        String message = mapFailureToMessage(failure);
    

        _errorMesgeGetComent = message;

        //
        // change(state, status: RxStatus.error(message));
        //
      }, //end Failure
      (success) {
        //
        _listCommentsOnOrdr = success;
        _errorMesgeGetComent = '';

      

        //
        //
        // change(state, status: RxStatus.success());
        //
      }, //end Succcess
    );

    _loadingGetComment = false;
    update();

    // end Method get Details Order Vertex
  }
  //  Add Comment To Order

  Future<void> addCommentToOrdermehod() async {
    //
    //
    //
    _loadingAddComment = true;
    _errorMesgeAddComent = '';
    update();

    //

    //
 
    final relst = await addCommentOrderUseCase.call(
      sidToekn: _sidTokenShared!,
      idOrdr: _idOrder,
      commentText: commentController.text,
    );

    //
    relst.fold(
      (failure) {
        //
        String mesage = mapFailureToMessage(failure);
        //
   
        _errorMesgeAddComent = mesage;
        _loadingAddComment = false;

        update();
        //
        // change(state, status: RxStatus.error(mesage));

        //
      }, //end Failure
      (success) async {
        //

        //
        commentController.text = '';
        _loadingAddComment = false;
        _errorMesgeAddComent = '';
        update();

        await getCommentsOnOrdrMethod(_idOrder);

        //
 
        //
        // change(state, status: RxStatus.success());

        //
      }, // end Success
    );

    // end Method Add Comments To Order
  }
  // end Class Controller
}
