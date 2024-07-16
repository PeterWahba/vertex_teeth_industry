import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/core/functions/methods_utls.dart';
import 'package:vertex_teeth_industry/core/utils/images_path_class.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/details_order_vertex_case.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../../core/utils/string_shared_prefs.dart';

class DetailsOrderVertexController extends GetxController
    with StateMixin<DetailsOrderVertexController> {
  //
  final GetDetailsOrderVertexUseCase getDetailsOrderVertexUseCase;

  //
  DetailsOrderVertexController({required this.getDetailsOrderVertexUseCase});

  //
  @override
  void onInit() {
    //
    super.onInit();
    //
    change(state, status: RxStatus.loading());
  }

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
    print('\n');
    print('\n');
    print(
        'The Teeth _listToothHistoryLog Length  is ${_listToothHistoryLog.length}');
    print('\n');
    print('\n');

    for (ToothHistoryLogEntities toothHistoryLogEntities
        in _listToothHistoryLog) {
      //
      List<String> listToothGroup =
          toothHistoryLogEntities.teethGroupNamesString.split(',');
      //
      print('\n');
      print('\n');
      print(
          'The Tooth is $numberTooth The Teeth Group Name is $listToothGroup');
      print('\n');
      print('\n');
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
        _listToothHistoryLog = success.listToothHistoryLogEntites;
        //

        //
        print('\n');
        print('\n');
        print('The Tooth History Log is ${success.listToothHistoryLogEntites}');
        print('\n');
        print('\n');
        //
        change(state, status: RxStatus.success());
        //
      }, //end Succcess
    );

    // end Method get Details Order Vertex
  }

  // end Class Controller
}
