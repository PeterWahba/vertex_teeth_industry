import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertex_teeth_industry/core/error/methods.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/faq_question_case.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_total_money_unpaidd_user.dart';

import '../../../../core/utils/setting_sevices.dart';
import '../../../../core/utils/string_shared_prefs.dart';
import '../../../domain/entities/faq_question_entities.dart';

class ProfileUsrController extends GetxController
    with StateMixin<ProfileUsrController> {
  //
  final GetTotalMoneuUnpaidUserUseCase totalMoneuUnpaidUserUseCase;
  //
  final GetFAQQuestionUseCase getFAQQuestionUseCase;

  ProfileUsrController({
    required this.totalMoneuUnpaidUserUseCase,
    required this.getFAQQuestionUseCase,
  });
  //

  @override
  void onInit() async {
    //
    super.onInit();
    //
    servicesClass.sharedPrefs.reload();
    //

    String? fullNameShred = servicesClass.sharedPrefs
        .getString(NameKeySharedPreferns.doctorFullName);
    //

    //

    String? emailUsrShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.emailUser);

    //
    if (fullNameShred != null) {
      //
      //
      _usrFullName = fullNameShred;
      _emailUser = emailUsrShared ?? 'Empty Email';
      //
    } else {
      //
    }

    //
    // change(state, status: RxStatus.error('Error Happen'));
    // change(state, status: RxStatus.loading());
    await getTotalMoneyUnpaidUserMethod();

    //
    await getFAQQuestionmethod();

    // end method onInit
  }

  //
  // Services

  final SettingGetServicesClass servicesClass = Get.find();

  // Variable
  // ===========================================================================

  // List
  // =============================
  List<FAQQuestionEntities> _listFAQquestion = [];

  // Strings
  // ----------------------

  String _usrFullName = 'فارغ';
//
  String _emailUser = 'Empty Email';

  //
  double _totalMoney = 0;

  // Get Variables
  // ===========================================================================

  // Get Lists
  // ===========================================

  List<FAQQuestionEntities> get listFAQquestion => _listFAQquestion;
  String get usrFullName => _usrFullName;
  //

  String get emailUser => _emailUser;

  // Intger
  // =======================================
  //

  double get totalMoney => _totalMoney;

  //

  // Methods
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  //  Methods Deals with Screen
  // ===========================================================================
  //

  Future<void> deleteSharedPrefs() async {
    //
    await servicesClass.sharedPrefs.reload();
    //
    await servicesClass.sharedPrefs.clear();
    // End Method Delete
  }

  //

  //
  // -----------------
  //  Open link of delete Account

  Future<void> openLinkDeleteAccount() async {
    final Uri url = Uri.parse(

        //
        // "https://docs.google.com/forms/d/e/1FAIpQLScAU72vH3Kx0pPM58EdCZ8iU0VtkqdYAufM3Us4fUybb3dN6A/viewform?pli=1"
        "https://docs.google.com/forms/d/e/1FAIpQLSdzJr-hIEOCiMNZxrHOvwbD8f7rKN8W3VpoLFEOd8pzObi-3Q/viewform?usp=sf_link");
    // if (await canLaunchUrl(url)) {
    //   await launchUrl(url,mode: LaunchMode.externalApplication);
    // }
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not work URL');
    } else {
      //
      //  The Link didnt work
      //
    }
  }

  //  Methods Deals with Backend
  // ===========================================================================
  // ===========================================================================
  // ===========================================================================

  Future<void> getTotalMoneyUnpaidUserMethod() async {
    //
    change(state, status: RxStatus.loading());

    String? sidTokenShared =
        servicesClass.sharedPrefs.getString(NameKeySharedPreferns.userSid);

    //

    if (sidTokenShared == null) {
      //
      return;

      //
    }

    final reslt =
        await totalMoneuUnpaidUserUseCase.call(sidToekn: sidTokenShared);

    //

    reslt.fold(
      (failure) {
        //
        //  handle Failure
        String message = mapFailureToMessage(failure);

        //
        change(state, status: RxStatus.error(message));
        //
        //
        //
      },
      (totalMoney) {
        //
        // handle success
        //
        _totalMoney = totalMoney;
        //
        //
        change(state, status: RxStatus.success());
        //
      },
    );

    // end method total Money
  }

  //
  Future<void> getFAQQuestionmethod() async {
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

    final reslt = await getFAQQuestionUseCase.call(sidToekn: sidTokenShared);

    //
    reslt.fold(
      (failure) {
        // handle Failure
        //
        String message = mapFailureToMessage(failure);
        //
        change(state, status: RxStatus.error(message));
      },
      (success) {
        //
        // handle Success
        //
        _listFAQquestion = success;
        //
        change(state, status: RxStatus.success());
      },
    );

    // end method FAQ Question method
  }

  // End class Controller
}
