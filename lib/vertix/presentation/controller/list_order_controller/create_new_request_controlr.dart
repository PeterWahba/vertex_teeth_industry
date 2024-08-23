import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/core/utils/string_shared_prefs.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/add_order_vertix_case.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_oder_vertix_case.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../domain/entities/add_order_vertix_entities.dart';
import '../../../domain/entities/order_vertix_entities.dart';
import '../../../domain/entities/tooth_history_log_entities.dart';

class CreateNewRequestController extends GetxController
    with StateMixin<CreateNewRequestController> {
  //

  /*
  
  */

  final AddOrderVertixUseCase addOrderVertixUseCase;
  final GetOrderVertixUseCase getOrderVertixUseCase;

  //
  CreateNewRequestController({
    required this.addOrderVertixUseCase,
    required this.getOrderVertixUseCase,
  });

  //
  @override
  void onInit() async {
    //
    super.onInit();
    //
    //
    servicesClass.sharedPrefs.reload();
    //

    //
    formNewRequest = GlobalKey();
    patientNameController = TextEditingController();
    noteController = TextEditingController();
    ageController = TextEditingController();
    //
    //  Add Teeth Scrn
    toothDescriptionController = TextEditingController();
    //
    _stateOrderDivision = 0;
    _stateOrderDivisionHomePage = 0;
    //
    _stateOrderFilter = 'All';
    //

    _stateOrderFilterHome = 'All';
    //
    _listSelectedTeeth = [];
    //
    update();

    await getAllOrderVertixMethod();
    // change(state, status: RxStatus.error('Error Message'));
    // change(state, status: RxStatus.loading());
    //
  }

  //
  @override
  void dispose() {
    super.dispose();
    //
    //
    patientNameController.dispose();
    noteController.dispose();
    ageController.dispose();
    patientFocusNode.dispose();
    noteFocusNode.dispose();
    ageFocusNode.dispose();
    toothDescriptionFocusNode.dispose();
    toothDescriptionController.dispose();
  }

  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  //
  // Form & TExtEditing Controller
  late GlobalKey<FormState> formNewRequest;
  late TextEditingController patientNameController;
  late TextEditingController noteController;
  late TextEditingController ageController;
  //
  // Focus Node
  final FocusNode patientFocusNode = FocusNode();
  final FocusNode noteFocusNode = FocusNode();
  final FocusNode ageFocusNode = FocusNode();
  final FocusNode toothDescriptionFocusNode = FocusNode();
  //
  // Add Teeth
  late TextEditingController toothDescriptionController;
  //
  //  Varaible
  // ===========================================================================

//  List
// -----------------------------------------------------

//
  List<OrderVertixEntities> _listOrderVertixEntities = [];
//
  List<OrderVertixEntities> _listOrderVertixEntitiesHomePage = [];
  List<OrderVertixEntities> _listOrderVertixEntitiesHomePageWhole = [];
//
  List<OrderVertixEntities> _listOrderVertixEntitiesWhole = [];

  //  Search and Filter List Order
  // List<OrderVertixEntities> _listOrderVertixEntitiesFilterd = [];
  // //
  // List<OrderVertixEntities> _listOrderVertixEntitiesSearched = [];

  // ----------------------------------------

  List<String> _listSelectedTeeth = [];

  //

  final List<StateOrderFilterClass> _listSateOrder = [
    /*
    [Mobile] shows vertex order status (Rejected - Registered and approved 
    - Pending approval - Delivered)
    */
    //
    StateOrderFilterClass(stateArabic: 'الكل', stateEnglish: 'All'),
    //
    //
    StateOrderFilterClass(
        stateArabic: 'تم الموافقة', stateEnglish: "Registered and Approved"),

    //
    StateOrderFilterClass(stateArabic: 'مرفوض', stateEnglish: 'Case Rejected'),

    //
    StateOrderFilterClass(
        stateArabic: 'معلق الطلب', stateEnglish: "Pending approval"),
    //
    StateOrderFilterClass(
        stateArabic: 'الانتهاء من التسليم', stateEnglish: "Finished Delivered"),
    //

    //

    // StateOrderFilterClass(stateArabic: 'في الطريق', stateEnglish: "On The Way"),

    // //

    // StateOrderFilterClass(
    //     stateArabic: 'حالة الانتهاء والتعبئة والتغليف',
    //     stateEnglish: "Case finished and Packaging"),
    // //

    StateOrderFilterClass(
        stateArabic: 'في الطريق', stateEnglish: "Case finished and Packaged"),

    // //
    // StateOrderFilterClass(
    //     stateArabic: 'جاهز للتغليف', stateEnglish: "Ready for Packaging"),

    // //
    StateOrderFilterClass(
        stateArabic: 'قيد التصنيع', stateEnglish: "In Production"),

    // //

    // StateOrderFilterClass(stateArabic: 'تاجيل', stateEnglish: "Postponed"),
    // //
    // StateOrderFilterClass(
    //     stateArabic: 'إعادة التأجيل', stateEnglish: "Re-Postponed"),
    // //
    // StateOrderFilterClass(
    //     stateArabic: 'طبعة جديدة ', stateEnglish: "Remake Case"),
    // //
    // StateOrderFilterClass(stateArabic: 'تم الالغاء', stateEnglish: "Cancelled"),

    //

    // 'مسجلة ومعتمدة',

    // 'في انتظار الموافقة',

    // 'فارغ',
  ];

  final List<String> _productTypeListScrn = [
    'Crown',
    'Bridge',
    'Veneer',
    'Post & Core',
  ];
  final List<String> _toothStatusListScrn = [
    'جيد',
    'سيء',
    'خطر',
  ];
  final List<String> listDivisionTeeth = [
    'PFM laser',
    'Temporary ',
    'Inlay&onlay',
    'e-max press',
    'Zircon full anatomy',
    'Zircon layered',
    'Zircon facing e-max',
    'Zircon prettau anterior',
    'e-max suprem',
  ];

  //
  final List<String> _listNDShadeGuide = [
    'افراغ الحقل',
    'Nd1',
    'Nd2',
    'Nd3',
    'Nd4',
    'Nd5',
    'Nd6',
    'Nd7',
    'Nd8',
    'Nd9',
  ];

  //
  final List<String> _listVitaClassical = [
    //
    'افراغ الحقل',
    'A1',
    'A2',
    'A3',
    'A3.5',
    'A4',
    'B1',
    'B2'
        'B3',
    'B4',
    'C1',
    'C2',
    'C3',
    'C4',
    'D2',
    'D3',
    'D4',
    'Bl0',
    'Bl1',
    'Bl2',
    'Bl3',
    'Bl4',
  ];

  final List<String> _listVita3DMaster = [
    'افراغ الحقل',
    '0m1',
    '0m2',
    '0m3',
    '1m1',
    '1m2',
    '1m3',
    '2l1.5',
    '2l2.5',
    '2m1',
    '2m2',
    '2m3',
    '2r1.5',
    '2r2.5',
    '3l1.5',
    '3l2.5',
    '3m1',
    '3m2',
    '3m3',
    '3r1.5',
    '3r2.5',
    '4l1.5',
    '4l2.5',
    '4m1',
    '4m2',
    '4m3',
    '4r1.5',
    '4r2.5',
    '5m1',
    '5m2',
    '5m3',
  ];

  List<String> _teethGroupNamesList = [];

  // List
  List<ToothHistoryLogEntities> _listToothHistoryLogEntitiesControlr = [];

  // String
  // ----------------------

  String _stateOrderFilter = 'All';
  //

  String _stateOrderFilterHome = 'All';
  //
  String _textSearch = '';
  //
  String _textSearchHomePage = '';
  //
  String _genderTextScrn = '';
  //
  String _genderTextBackend = '';

  //
  String _errorMessage = '';

  //
  String _errorMessageAddOrder = '';

  //
  String _errorMessageBotomSheet = '';

  //
  String _toothStatusTextScrn = '';

  //
  String _toothStatusTextBackend = '';

  //
  String _productTypeText = '';
  //

  // ignore: unused_field
  String _selectedtypeProduct = '';

  //
  String? _vitaClassicalText;

  //
  String? _vita3DMasterText;

  //
  String? _ndShadeGuideText;

  //

  //

  //
  // Intger

  // int _reppeatedSearchFilter = 0;
  //

  int _isFileDigital = 0;
  //

  int _pfmLaser = 0;
  //

  int _tempoary = 0;
  //

  int _inlayAndOnlay = 0;
  //

  int _zicronFacingEMax = 0;
  //
  //

  int _stateOrderDivision = 0;
  //

  int _stateOrderDivisionHomePage = 0;
  //
  int _zicronFullAnatomy = 0;
  //

  int _zicronLayered = 0;
  //

  int _zicronPrettauAnterior = 0;
  //

  int _eMaxPress = 0;
  //

  int _eMaxSuprem = 0;
  //
  int x = 0;
  //

  //
  //  Get Varaible
  // ===========================================================================

  // Lists
  // ============================

  //  List Order Vertix
  //
  List<OrderVertixEntities> get listOrderVertixEntities =>
      _listOrderVertixEntities;
  //
  List<OrderVertixEntities> get listOrderVertixEntitiesHomePage =>
      _listOrderVertixEntitiesHomePage;
  //

  List<ToothHistoryLogEntities> get listToothHistoryLogEntitiesControlr =>
      _listToothHistoryLogEntitiesControlr;

  // List String
  //-------------------------------------

  List<String> get toothStatusListScrn => _toothStatusListScrn;

  //

  List<String> get listVitaClassical => _listVitaClassical;

  //

  List<String> get listVita3DMaster => _listVita3DMaster;

  //

  List<String> get listNDShadeGuide => _listNDShadeGuide;

  //

  List<StateOrderFilterClass> get listSateOrder => _listSateOrder;

  //

  List<String> get listSelectedTeeth => _listSelectedTeeth;

  //

  List<String> get productTypeListScrn => _productTypeListScrn;

  //

  String get genderTextScrn => _genderTextScrn;
  //

  String get productTypeText => _productTypeText;
  //

  String get toothStatusTextScrn => _toothStatusTextScrn;
  //

  String get errorMessageAddOrder => _errorMessageAddOrder;
  //

  // String get genderTextBackend => _genderTextBackend;
  //

  String get errorMessage => _errorMessage;

  //

  String get errorMessageBotomSheet => _errorMessageBotomSheet;

  //

  String? get vita3DMasterText => _vita3DMasterText;

  //

  String? get vitaClassicalText => _vitaClassicalText;

  //

  String? get ndShadeGuideText => _ndShadeGuideText;

  //
  // Get Intger

  //
  int get isFileDigital => _isFileDigital;

  //
  int get stateOrderDivision => _stateOrderDivision;
  //
  int get stateOrderDivisionHomePage => _stateOrderDivisionHomePage;

  int get pfmLaser => _pfmLaser;
  //

  int get tempoary => _tempoary;
  //

  int get inlayAndOnlay => _inlayAndOnlay;
  //

  int get zicronFacingEMax => _zicronFacingEMax;
  //

  int get zicronFullAnatomy => _zicronFullAnatomy;
  //

  int get zicronLayered => _zicronLayered;
  //

  int get zicronPrettauAnterior => _zicronPrettauAnterior;
  //

  int get eMaxPress => _eMaxPress;
  //

  int get eMaxSuprem => _eMaxSuprem;
  //

  //  Methods
  // ===========================================================================
  // ===========================================================================

  //  Methods Deals with Screen
  // ===========================================================================

  //
  // Change Image Color According to ProductType
  //
  changeImageToothAccordingToProductType(
      {required String numberTooth,
      required Function(
              {required String numberTooth,
              required String typeProductToChoseColor})
          functionToothimageOrColor}) {
    //
    //

    for (ToothHistoryLogEntities toothHistoryLogEntities
        in _listToothHistoryLogEntitiesControlr) {
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

  // Filter Orders according to State
  //

  Future<void> filterOrdersAccordingToStatesOriginal(String stateOrder) async {
    //
    //
    _stateOrderFilter = stateOrder;
  }
  //

  Future<void> searchInsideListOrderVertixOriginal(
      {required String? letterIdName, required String? stateOrder}) async {
    //

    //

    //
    String statusOrderM = stateOrder ?? '';
    //
    if (stateOrder != null) {
      //
      _stateOrderFilter = stateOrder;
      //

      //

      // end StateOrder != null
    }
    //
    if (stateOrder == null) {
      //
      statusOrderM = _stateOrderFilter;
    }
    //
    String textSearchM = letterIdName ?? '';
    //

    if (letterIdName != null) {
      //
      _textSearch = letterIdName;
    }
    //
    if (letterIdName == null) {
      //
      textSearchM = _textSearch;
    }
    //
    // if(letterIdName !=null){
    //   //

    //

    // }
    //
    _listOrderVertixEntities = _listOrderVertixEntitiesWhole;

    // it should always filter then search
    //
    //
    //
    List<OrderVertixEntities> listFiltered = [];

    if (statusOrderM == '' || statusOrderM == 'All') {
      //
      //

      //
      _listOrderVertixEntities = _listOrderVertixEntitiesWhole;
      //
    } else {
      //
      //
      _listOrderVertixEntities = _listOrderVertixEntitiesWhole;
      //

      //
      for (OrderVertixEntities orderVertixEntities
          in _listOrderVertixEntities) {
        //  Change State of Order

        String orderStateEntities = orderVertixEntities.orderState;
        //
        /*
    Registered and Approved

In Production

Ready for Packaging

Case finished and Packagedt

Postponed

Re-Postponed
    */

        /*
    Delivered and Finished

Remake Case
    */

        /*
    
    Case Recjeted

Cancelled
    */

        if (orderStateEntities == 'In Production') {
          // 'Registered and Approved'
          orderStateEntities = 'In Production';
        } else if (orderStateEntities == 'Ready for Packaging') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Case finished and Packaged') {
          // 'Registered and Approved'
          orderStateEntities = 'Case finished and Packaged';
        } else if (orderStateEntities == 'Postponed') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Re-Postponed') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Remake Case') {
          //
          orderStateEntities = "Finished Delivered";
        } else if (orderStateEntities == 'Cancelled') {
          //
          orderStateEntities = "Case Rejected";
        }

        //
        if (orderStateEntities == statusOrderM) {
          //
          //
          //
          listFiltered.add(orderVertixEntities);
        }
        //

        // end For
      }
      //
      _listOrderVertixEntities = listFiltered;
      //
      //
      if (textSearchM == '') {
        update();
        return;
      }
    }

    //
    //
    //
    //
    //  in case The user search by IdOrder
    //
    final List<OrderVertixEntities> listIdOrder = _listOrderVertixEntities
        .where((element) =>
            element.idOrder.toLowerCase().contains(textSearchM.toLowerCase()))
        .toList();
    //
    if (listIdOrder.isNotEmpty) {
      //
      //
      _listOrderVertixEntities = listIdOrder;
      //
    }
    //
    //
    // if (_listOrderVertixEntities.isEmpty) {
    //   //
    //   _listOrderVertixEntities = _listOrderVertixEntitiesWhole;
    // }

    //

    //
    List<OrderVertixEntities> listNamePatient = [];
    //

    //
    if (listIdOrder.isEmpty) {
      //
      //
      //
      listNamePatient = _listOrderVertixEntities
          .where((element) => element.patientName
              .toLowerCase()
              .contains(textSearchM.toLowerCase()))
          .toList();
      //
      _listOrderVertixEntities = listNamePatient;
      //
      //
      //  end listIdOrder is empty
    }
    update();

    // end method searchInsideListOrderVertixOriginal
  }

  Future<void> searchInsideListOrderVertixOriginalHomePage(
      {required String? letterIdNameHome,
      required String? stateOrderHome}) async {
    //
    //
    String statusOrderHomePageM = stateOrderHome ?? '';
    //
    if (stateOrderHome != null) {
      //
      _stateOrderFilterHome = stateOrderHome;
    }
    //
    if (stateOrderHome == null) {
      //
      statusOrderHomePageM = _stateOrderFilterHome;
    }
    //
    String textSearchHomePageM = letterIdNameHome ?? '';
    //

    if (letterIdNameHome != null) {
      //
      _textSearchHomePage = letterIdNameHome;
    }
    //
    if (letterIdNameHome == null) {
      //
      textSearchHomePageM = _textSearchHomePage;
    }
    //
    // if(letterIdName !=null){
    //   //

    //

    // }
    //
    _listOrderVertixEntitiesHomePage = _listOrderVertixEntitiesHomePageWhole;

    // it should always filter then search
    //
    //
    //
    List<OrderVertixEntities> listFilteredHomePage = [];

    if (statusOrderHomePageM == '' || statusOrderHomePageM == 'All') {
      //
      //

      //
      _listOrderVertixEntitiesHomePage = _listOrderVertixEntitiesHomePageWhole;
      //
    } else {
      //
      //
      _listOrderVertixEntitiesHomePage = _listOrderVertixEntitiesHomePageWhole;
      //

      //
      for (OrderVertixEntities orderVertixEntitiesHomePage
          in _listOrderVertixEntitiesHomePage) {
        //
        String orderStateEntities = orderVertixEntitiesHomePage.orderState;
        //
        /*
    Registered and Approved

In Production

Ready for Packaging

Case finished and Packagedt

Postponed

Re-Postponed
    */

        /*
    Delivered and Finished

Remake Case
    */

        /*
    
    Case Recjeted

Cancelled
    */

        if (orderStateEntities == 'In Production') {
          // 'Registered and Approved'
          orderStateEntities = 'In Production';
        } else if (orderStateEntities == 'Ready for Packaging') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Case finished and Packaged') {
          // 'Registered and Approved'
          orderStateEntities = 'Case finished and Packaged';
        } else if (orderStateEntities == 'Postponed') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Re-Postponed') {
          // 'Registered and Approved'
          orderStateEntities = 'Registered and Approved';
        } else if (orderStateEntities == 'Remake Case') {
          //
          orderStateEntities = "Finished Delivered";
        } else if (orderStateEntities == 'Cancelled') {
          //
          orderStateEntities = "Case Rejected";
        }
        //
        if (orderStateEntities == statusOrderHomePageM) {
          //
          //
          //
          listFilteredHomePage.add(orderVertixEntitiesHomePage);
        }
        //

        // end For
      }
      //
      _listOrderVertixEntitiesHomePage = listFilteredHomePage;
      //
      //
      if (textSearchHomePageM == '') {
        update();
        return;
      }
    }

    //
    //
    //
    //
    //  in case The user search by IdOrder
    //
    final List<OrderVertixEntities> listIdOrderHomePage =
        _listOrderVertixEntitiesHomePage
            .where((element) => element.idOrder
                .toLowerCase()
                .contains(textSearchHomePageM.toLowerCase()))
            .toList();
    //
    if (listIdOrderHomePage.isNotEmpty) {
      //
      //
      _listOrderVertixEntitiesHomePage = listIdOrderHomePage;
      //
    }
    //

    //

    //
    List<OrderVertixEntities> listNamePatientHomepage = [];
    //

    //
    if (listIdOrderHomePage.isEmpty) {
      //
      //
      //
      listNamePatientHomepage = _listOrderVertixEntitiesHomePage
          .where((element) => element.patientName
              .toLowerCase()
              .contains(textSearchHomePageM.toLowerCase()))
          .toList();
      //
      _listOrderVertixEntitiesHomePage = listNamePatientHomepage;
      //
      //
      //  end listIdOrder is empty
    }
    update();

    // end method searchInsideListOrderVertixOriginal
  }

  // List Order Scrn

  //
  changeVitaClassicalText(String newValue) {
    //

    //
    _vitaClassicalText = newValue;
    //
    if (newValue == 'افراغ الحقل') {
      //
      _vitaClassicalText = null;
    }
    //
    update();

    // end Method change Vita Classical Text
  }

  //
  changeNDShadeGuideText(String newValue) {
    //

    //
    _ndShadeGuideText = newValue;
    //
    if (newValue == 'افراغ الحقل') {
      //
      _ndShadeGuideText = null;
    }
    //
    update();

    // end Method change Vita Classical Text
  }

  //
  changeVita3DMasterText(String newValue) {
    //
    _vita3DMasterText = newValue;
    //
    if (newValue == 'افراغ الحقل') {
      //
      _vita3DMasterText = null;
    }
    //
    update();

    // end Method change Vita 3D Master Text
  }

  //
  changeSelectedTypeProductMethod(String newValue) {
    //
    _selectedtypeProduct = newValue;
    //
    update();
  }
  //

  changeStateOrderDivsion(int index) {
    //
    _stateOrderDivision = index;
    //
    update();

    //
  }

  //  Change state order homePage
  changeStateOrderDivsionHomePage(int index) {
    //
    _stateOrderDivisionHomePage = index;
    //
    update();

    //
  }

  //

  void changeGenderTextMethod(String newGender) {
    //
    _genderTextScrn = newGender;
    update();
    //
    if (newGender == 'ذكر') {
      //
      _genderTextBackend = 'Male';
      update();
    } else {
      //
      _genderTextBackend = 'Female';
      update();
    }
    //
    update();

    // End GenderText Method
  }

  //

  //  Check All Fields  fill
  //
  bool checkAllFieldsFilled() {
    //
    //

    if (patientNameController.text.isEmpty ||
        patientNameController.text == '' ||
        noteController.text.isEmpty ||
        noteController.text == '' ||
        ageController.text.isEmpty ||
        ageController.text == '' ||
        _genderTextBackend == '' ||
        (_vitaClassicalText == null && _vita3DMasterText == null) ||
        (_vitaClassicalText != null && _vita3DMasterText != null)) {
      //

      if (patientNameController.text.isEmpty ||
          patientNameController.text == '') {
        //
        //  Error Message  patientName is required
        //
        _errorMessage = 'إسم المريض مطلوب';
        //
        update();
        //
        return false;
        //
      } else if (_genderTextBackend == '') {
        //
        //
        //  Error Message  Gender is required
        //
        _errorMessage = 'جنس المريض مطلوب';
        //
        update();
        //
        return false;
      } else if (ageController.text.isEmpty || ageController.text == '') {
        //
        //
        //  Error Message  Age is required
        //
        _errorMessage = 'عمر المريض مطلوب';
        //
        update();
        //
        return false;
      } else if (noteController.text.isEmpty || noteController.text == '') {
        //
        //
        //  Error Message  Age is required
        //
        _errorMessage = 'حقل الملاحظات مطلوب';
        //
        update();
        //
        return false;
      } else if (_vitaClassicalText == null && _vita3DMasterText == null) {
        //
        //
        //  Error Message  Age is required
        //
        _errorMessage =
            'لا يمكن ان يكون حقل الـ Vit 3D Master وحقل الـ Vita Classical  كلامهما فارغان';
        //
        update();
        //
        return false;
      } else if (_vitaClassicalText != null && _vita3DMasterText != null) {
        //
        //
        //  Error Message  Age is required
        //
        _errorMessage =
            'يجب اختيار حقل واحد اما الـ Vita 3D Master  او حقل الـ Vita Classical';
        //
        update();
        //
        return false;
      } else {
        //
        return false;
      }

      // End if is False
    } else {
      //
      _errorMessage = '';
      //
      return true;
    }

    // End Check Method
  }

  // Methods of Add Teeth Scrn
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  //

  String checkIFToothExistinLists(String toothNumber) {
    //

    // return (before)  if the tooth exist in list before added
    final beforeAdded = _listSelectedTeeth.contains(toothNumber);
    //
    if (beforeAdded) {
      //
      return 'before';
    }
    // return (after)  if the tooth exist in list after added

    for (ToothHistoryLogEntities toothHistoryLogEntities
        in _listToothHistoryLogEntitiesControlr) {
      //

      final afterAdded =
          toothHistoryLogEntities.teethGroupNames!.contains(toothNumber);

      //
      //
      if (afterAdded) {
        //
        if (toothHistoryLogEntities.teethGroupNames!.length == 1) {
          //
          //
          return 'after&&lastOne';
        }
        //
        return 'after';
      }

      //
    }

    // return ()  if the tooth  not exist

    return '';

    // end method check tooth exist in List
  }

  //

  removeToothFromSelectedList(String toothNumbr) {
    //
    _listSelectedTeeth.remove(toothNumbr);
    //
    _teethGroupNamesList.remove(toothNumbr);
    //
    //

    //
    //
    update();
    // end method remove tooth from selected list
  }

  removeToothFromListToothHistorLog(String numberTooth, String? lastOne) {
    //

    //

    //
    for (int i = 0; i < _listToothHistoryLogEntitiesControlr.length;) {
      //

      final isRemoved = _listToothHistoryLogEntitiesControlr[i]
          .teethGroupNames!
          .remove(numberTooth);
      //
      String toothGroupStringEdtied = '';
      //
      int x = 0;
      for (String tooth
          in _listToothHistoryLogEntitiesControlr[i].teethGroupNames!) {
        //
        toothGroupStringEdtied = toothGroupStringEdtied + tooth;

        //
        if (_listToothHistoryLogEntitiesControlr[i].teethGroupNames![x] !=
            _listToothHistoryLogEntitiesControlr[i].teethGroupNames![
                _listToothHistoryLogEntitiesControlr[i]
                        .teethGroupNames!
                        .length -
                    1]) {
          //
          // ignore: prefer_interpolation_to_compose_strings
          toothGroupStringEdtied = toothGroupStringEdtied + ',';
          //
        }
        //
        x++;
        // end for
      }
      //
      _listToothHistoryLogEntitiesControlr[i] = ToothHistoryLogEntities(
        ndShadeGuide: _ndShadeGuideText,
        teethGroupNames:
            _listToothHistoryLogEntitiesControlr[i].teethGroupNames,
        teethGroupNamesString: toothGroupStringEdtied,
        toothDescription:
            _listToothHistoryLogEntitiesControlr[i].toothDescription,
        toothStatus: _listToothHistoryLogEntitiesControlr[i].toothStatus,
        productType: _listToothHistoryLogEntitiesControlr[i].productType,
        pfmLaser: _listToothHistoryLogEntitiesControlr[i].pfmLaser,
        tempoary: _listToothHistoryLogEntitiesControlr[i].tempoary,
        inlayAndOnlay: _listToothHistoryLogEntitiesControlr[i].inlayAndOnlay,
        zicronFacingEMax:
            _listToothHistoryLogEntitiesControlr[i].zicronFacingEMax,
        zicronFullAnatomy:
            _listToothHistoryLogEntitiesControlr[i].zicronFullAnatomy,
        zicronLayered: _listToothHistoryLogEntitiesControlr[i].zicronLayered,
        zicronPrettauAnterior:
            _listToothHistoryLogEntitiesControlr[i].zicronPrettauAnterior,
        eMaxPress: _listToothHistoryLogEntitiesControlr[i].eMaxPress,
        eMaxSuprem: _listToothHistoryLogEntitiesControlr[i].eMaxSuprem,
      );

      //
      // itemremoved = toothHistoryLogEntities;
      //
      if (lastOne != null && isRemoved) {
        //
        _listToothHistoryLogEntitiesControlr
            .remove(_listToothHistoryLogEntitiesControlr[i]);
        //
        //
        update();
        //
        break;
        //
        // return;
        //

        //
      }

      //
      //

      //
      update();
      //
      i++;
      //
    }

    //

    // end method remove tooth from toothListHistory
  }

  //
  //  change is Digital Value
  changeIsDigitalValue() {
    //

    if (_isFileDigital == 0) {
      //
      //
      _isFileDigital = 1;
      //
    } else {
      //
      _isFileDigital = 0;
    }
    //
    update();
    // end method is digitalValue
  }

  // Add Tooth To SelectedList
  //
  addEmptyToothToSelectedList(String? numberTooth) {
    //
    if (numberTooth != null) {
      //
      _listSelectedTeeth.add(numberTooth);
      //
    } else {
      //
      _listSelectedTeeth = [];
    }
    //

    //
    update();
    //
  }

  // Method to change color tooth when be sselected
  //
  bool isToothSelectedMethod(String numberTooth) {
    //
    //

    return _listSelectedTeeth.contains(numberTooth);

    // end isToothSelectedMethod
  }

  //
  //  return State of Tooth
  //
  String returnStateToothAccordingToGroup(String nubmrTooth) {
    //

    if (_listToothHistoryLogEntitiesControlr.isNotEmpty) {
      //

      //
      for (ToothHistoryLogEntities toothHistoryLogEntities
          in _listToothHistoryLogEntitiesControlr) {
        //

        for (int i = 0; i < toothHistoryLogEntities.teethGroupNames!.length;) {
          //
          if (toothHistoryLogEntities.teethGroupNames![i] == nubmrTooth) {
            //

            //
            if (toothHistoryLogEntities.toothStatus == 'good') {
              //
              return 'good';
              //
            } else if (toothHistoryLogEntities.toothStatus == 'bad') {
              //
              return 'bad';
              //
            } else if (toothHistoryLogEntities.toothStatus == 'danger') {
              //
              return 'خطر';
              //
            }

            //
          }

          //
          i++;
          // end For Tooth GroupName
        }

        //

        //  End For
      }
      return '';
      // End IF
    } else {
      //
      return '';
      //
    }

    // End ReturnStateTooth Method
  }

  changeValuesDivsionTeeth(String division) {
    //
    //

    if (division == 'PFM laser') {
      //
      _pfmLaser = _pfmLaser == 1 ? 0 : 1;
      //
    } else if (division == 'Temporary') {
      //
      _tempoary = _tempoary == 1 ? 0 : 1;
      //
    } else if (division == 'Inlay&onlay') {
      //
      _inlayAndOnlay = _inlayAndOnlay == 1 ? 0 : 1;
      //
    } else if (division == 'e-max press') {
      //
      _eMaxPress = _eMaxPress == 1 ? 0 : 1;
      //
    } else if (division == 'Zircon full anatomy') {
      //
      _zicronFullAnatomy = _zicronFullAnatomy == 1 ? 0 : 1;
      //
    } else if (division == 'Zircon layered') {
      //
      _zicronLayered = _zicronLayered == 1 ? 0 : 1;
      //
    } else if (division == 'Zircon facing e-max') {
      //
      _zicronFacingEMax = _zicronFacingEMax == 1 ? 0 : 1;
      //
    } else if (division == 'Zircon prettau anterior') {
      //
      _zicronPrettauAnterior = _zicronPrettauAnterior == 1 ? 0 : 1;
      //
    } else if (division == 'e-max suprem') {
      //
      _eMaxSuprem = _eMaxSuprem == 1 ? 0 : 1;
      //
    }
    //
    //
    //
    update();

    // End Method Change Divisions Value
  }

  choseTpeProductMethod(String newType) {
    //
    _productTypeText = newType;
    //
    //

    //
    update();
    //

    // End Method chose productType
  }
  //

  choseToothStateMethod(String newState) {
    //
    _toothStatusTextScrn = newState;
    //
    update();
    //

/*
  
    
   
*/
    if (newState == 'جيد') {
      //
      _toothStatusTextBackend = 'good';
      //
    } else if (newState == 'سيء') {
      //
      //
      _toothStatusTextBackend = 'bad';
      //
    }
    //
    if (newState == 'خطر') {
      //
      //
      _toothStatusTextBackend = 'danger';
      //
    }

    //
    //
    // End Method chose productType
  }

  // check Bottom Sheet information filled
  //

  bool checkBottomSheetInformationFilled() {
    //
    int totalDivision = _pfmLaser +
        _inlayAndOnlay +
        _eMaxPress +
        _zicronFullAnatomy +
        _zicronLayered +
        _zicronFacingEMax +
        _zicronPrettauAnterior +
        _eMaxSuprem;

    if (toothDescriptionController.text.isEmpty ||
        toothDescriptionController.text.trim() == '' ||
        _productTypeText == '' ||
        _toothStatusTextBackend == '' ||
        totalDivision > 1 ||
        (_pfmLaser == 0 &&
            _tempoary == 0 &&
            _inlayAndOnlay == 0 &&
            _eMaxPress == 0 &&
            _zicronFullAnatomy == 0 &&
            _zicronLayered == 0 &&
            _zicronFacingEMax == 0 &&
            _zicronPrettauAnterior == 0 &&
            _eMaxSuprem == 0)) {
      //
      if (toothDescriptionController.text.isEmpty ||
          toothDescriptionController.text.trim() == '') {
        //

        // Error check Message Description
        //
        _errorMessageBotomSheet = 'حقل وصف السن مطلوب';
        update();
        return false;
      } else
      //
      if (_productTypeText == '') {
        //
        // Error check Message product  type
        //
        //
        _errorMessageBotomSheet = 'حقل نوع المنتج مطلوب';
        update();
        return false;
      } else
      //
      if (_toothStatusTextBackend == '') {
        //
        // Error check Message teeth status
        //
        _errorMessageBotomSheet = 'حقل حالة السن مطلوب';
        update();
        return false;
      } else
      //
      if (_pfmLaser == 0 &&
          _tempoary == 0 &&
          _inlayAndOnlay == 0 &&
          _eMaxPress == 0 &&
          _zicronFullAnatomy == 0 &&
          _zicronLayered == 0 &&
          _zicronFacingEMax == 0 &&
          _zicronPrettauAnterior == 0 &&
          _eMaxSuprem == 0) {
        //
        // Error check Message Division
        //
        _errorMessageBotomSheet = 'يجب اختيار احد الاقسام';
        update();
        return false;
      } else
      //
      if (totalDivision > 1) {
        //
        // Error check Message Division
        //
        _errorMessageBotomSheet = 'لا يمكنك اختيار اكثر من قسم';
        update();
        return false;
      }

      return false;

      // End If the sections are empty
    } else {
      //

      //
      return true;
    }

    // End Method Check Bottom Sheet information
  }

  // Add Tooth To List Group
  //
  addToothToGroupTeethList(String numbrTooth) {
    //
    _teethGroupNamesList.add(numbrTooth);
    //

    //
    //End Add Tooth To Group List
  }

  //
  //

  addToListTeethHistoryLogEntities() {
    //
    String toothGroupString = '';
    //
    if (_teethGroupNamesList.isNotEmpty) {
      //
      int i = 0;
      //
      for (String tooth in _teethGroupNamesList) {
        //
        toothGroupString = toothGroupString + tooth;

        //
        if (_teethGroupNamesList[i] !=
            _teethGroupNamesList[_teethGroupNamesList.length - 1]) {
          //
          // ignore: prefer_interpolation_to_compose_strings
          toothGroupString = toothGroupString + ',';
          //
        }
        //
        i++;
        // end for
      }

      //
    }
    //
    //
    //
    // if (toothGroupString != '') {
    //   //
    //   return;
    // }

    ToothHistoryLogEntities toothHistoryLogEntities = ToothHistoryLogEntities(
      teethGroupNamesString: toothGroupString,
      teethGroupNames: _teethGroupNamesList,
      ndShadeGuide: _ndShadeGuideText,
      toothDescription: toothDescriptionController.text.trim(),
      toothStatus: _toothStatusTextBackend,
      productType: _productTypeText,
      pfmLaser: _pfmLaser,
      tempoary: _tempoary,
      inlayAndOnlay: _inlayAndOnlay,
      zicronFacingEMax: _zicronFacingEMax,
      zicronFullAnatomy: _zicronFullAnatomy,
      zicronLayered: _zicronLayered,
      zicronPrettauAnterior: _zicronPrettauAnterior,
      eMaxPress: _eMaxPress,
      eMaxSuprem: _eMaxSuprem,
    );

    _listToothHistoryLogEntitiesControlr.add(toothHistoryLogEntities);

    //
    //

    _teethGroupNamesList = [];
    _listSelectedTeeth = [];
    _teethGroupNamesList = [];
    toothDescriptionController.text = '';
    _toothStatusTextBackend = '';
    _toothStatusTextScrn = '';
    _productTypeText = '';
    _pfmLaser = 0;
    _tempoary = 0;
    _inlayAndOnlay = 0;
    _zicronFacingEMax = 0;
    _zicronFullAnatomy = 0;
    _zicronLayered = 0;
    _zicronPrettauAnterior = 0;
    _eMaxPress = 0;
    _eMaxSuprem = 0;

    //
    update();

    //
    //

    //
    // Make All Varibale is empty
    // End Method Add To List TeethHistor
    // ----------------------------------
  }

  //  Methods Deals with Backend
  // ===========================================================================

  Future<void> addOrderVertixMethod() async {
    //
    change(state, status: RxStatus.loading());

    //
    servicesClass.sharedPrefs.reload();

    //
    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    //
    String? dentistNameShared = servicesClass.sharedPrefs
        .getString(NameKeySharedPreferns.doctorFullName);

    if (sidTokenShared == null || dentistNameShared == null) {
      //
      //  Change State to Error And show there is error with expire of Register
      //
      //
      _errorMessageAddOrder = 'يوجد خطأ ، قم بتسجيل الدخول من جديد';
      change(state, status: RxStatus.error(_errorMessageAddOrder));
      //
      return;
      //
    }

    //
    DateTime dateTime = DateTime.now();
    //

    String dateTimeText = dateTime.toString();
    dateTimeText = dateTime.toString().split(' ')[0];

    //

    //

    //

    // if (dateTimeText != '') {
    //   //
    //   return;
    // }

    //

    AddOrderVertixEntities addOrderVertixEntities = AddOrderVertixEntities(
      vita3DMaster: _vita3DMasterText,
      vitaClassical: _vitaClassicalText,
      noteOrder: noteController.text.trim(),
      dentistName: dentistNameShared,
      dateTime: dateTimeText,
      patientName: patientNameController.text.trim(),
      gender: _genderTextBackend,
      age: int.parse(ageController.text.trim()),
      isDigital: _isFileDigital,
      listToothHistoryLogEntities: _listToothHistoryLogEntitiesControlr,
    );

    //
    //

    //

    final reslt = await addOrderVertixUseCase.call(
      sidToekn: sidTokenShared,
      addOrderVertixEntites: addOrderVertixEntities,
    );

    //

    reslt.fold(
      (failure) {
        //
        //  handle Failure

        String message = mapFailureToMessage(failure);

        //
        //

        //
        _errorMessageAddOrder = message;
        //
        change(state, status: RxStatus.error(message));
        //
      },
      (success) {
        //
        //
        //
        //  handle Success

        //
        patientNameController.text = '';
        noteController.text = '';
        _genderTextScrn = '';
        _genderTextBackend = '';
        ageController.text = '';

        _isFileDigital = 0;
        //
        _listToothHistoryLogEntitiesControlr = [];

        _teethGroupNamesList = [];
        toothDescriptionController.text = '';
        _toothStatusTextBackend = '';
        _productTypeText = '';
        _ndShadeGuideText = null;
        _vita3DMasterText = null;
        _vitaClassicalText = null;
        _pfmLaser = 0;
        _tempoary = 0;
        _inlayAndOnlay = 0;
        _zicronFacingEMax = 0;
        _zicronFullAnatomy = 0;
        _zicronLayered = 0;
        _zicronPrettauAnterior = 0;
        _eMaxPress = 0;
        _eMaxSuprem = 0;

        //
        change(state, status: RxStatus.success());

        //

        //
      },
    );

    // End Add Order Vertix Method
  }

  //
  //
  Future<void> getAllOrderVertixMethod() async {
    //
    //
    change(state, status: RxStatus.loading());

    //
    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    if (sidTokenShared == null) {
      //
      //  Change State to Error And show there is error with expire of Register
      //
      return;
      //
    }

    // write get all order usecase

    final reslt = await getOrderVertixUseCase.call(
      sidToekn: sidTokenShared,
    );

    //

    reslt.fold(
      (failure) {
        //
        // Handle Failure
        String message = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(message));
        //
      },
      (succes) {
        //
        _listOrderVertixEntitiesHomePage = [];
        //
        _listOrderVertixEntities = succes;
        //
        _listOrderVertixEntitiesWhole = succes;
        //

        if (succes.length > 15) {
          //
          for (int i = 0; i < succes.length && i < 15;) {
            //
            _listOrderVertixEntitiesHomePage.add(succes[i]);

            //
            i++;
            // end For
          }
          // End If
        } else {
          _listOrderVertixEntitiesHomePage = succes;
        }
        //
        _listOrderVertixEntitiesHomePageWhole =
            _listOrderVertixEntitiesHomePage;

        // Handle success
        change(state, status: RxStatus.success());
        //
      },
    );

    // End Method get All OrderVertix
  }

  // End Class Controller
}

class StateOrderFilterClass {
  //
  final String stateArabic;
  final String stateEnglish;

  StateOrderFilterClass(
      {required this.stateArabic, required this.stateEnglish});
  //
}
