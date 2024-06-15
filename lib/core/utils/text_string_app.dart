class AppStringtext {
  //
  // Puplic
  //

  // On Board
  //
  static const skip = 'تخطي';

  //
  //
  static const special = 'متميز';

  // Register

  //
  //
  static const emailTextHintRegister = 'أدخل بريدك الإلكتروني';

  //
  //
  static const passwordTextHintRegister = 'أدخل الرمز السري';

  // Nav Botom

  //
  //
  static const homNavBotomScrn = 'الرئيسية';

  //
  //
  static const listOrderNavBotomScrn = 'قائمة الطلبات';

  //
  //
  static const profileNavBotomScrn = 'الملف الشخصي';

  //
  //
  static const waletPaymentNavBotomScrn = 'عمليات الدفع';

  //

  // Profile Screen
  //
  static const cumulativeAmountProfileScrn = 'المببلغ التراكمي';

  //
  static const personalAccountProfileScrn = 'الحساب الشخصي';

  //
  static const savedFilesProfileScrn = 'الملفات المحفوظة';

  //
  static const walletProfileScrn = 'المحفظة';

  //
  static const settingProfileScrn = 'الأعــدادت';

  //
  static const aboutFAQProfileScrn = 'FAQ';

  //
  static const signOutProfileScrn = 'تسجيل خروج';

  //

  // List Order Screen
  //
  //

  static const addRequestListOrderScrn = 'إضافة طلب';
  //

  static const idListOrderScrn = 'ID';

  //

  // Add   Order PahseOne Screen
  //
  //

  static const completeAddOrderPahseThisrd = 'إكمال طلب';
  //
  static const crateNewRequestPartOneAddOrderPahseOneScrn = 'إنشاء ';

  //
  static const crateNewRequestPartTwoAddOrderPahseOneScrn = 'طلب ';

  //
  static const crateNewRequestPartThreeAddOrderPahseOneScrn = 'جديد ';

  //
  static const didntSaveAddOrderPahseOneScrn = 'لم يحفظ';
  //

  static const patientNameAddOrderPahseOneScrn = 'إسم المريض';
  //

  static const dateAddOrderPahseOneScrn = 'التاريخ';
  //

  static const genderAddOrderPahseOneScrn = 'الجنس';
  //

  static const ageAddOrderPahseOneScrn = 'العمر';
  //

  static const nextBtnAddOrderPahseOneScrn = 'التالي';
  //

  static const isFileDigitalAddOrderPahseOneScrn = 'هل الملف ديجيتال؟';

  //  Add Teeth Screen
  //

  static const btnAddTeethScrn = 'إضافة الاسنان';
  //

  static const describeFieldAddTeethScrn = 'الوصف';
  //

  static const typeProductFieldAddTeethScrn = 'نوع المنتج';
  //

  static const toothStateFieldAddTeethScrn = 'حالة السن';
  //

  static const divisionsAddTeethScrn = 'الأقسام';
  //

  static const createAddTeethScrn = 'إنشاء';
  //

  // Home Page
  // ==================================================

  static const showHomeScrn = 'العروض';
  //

  static const andHomeScrn = 'و';
  //

  static const adsHomeScrn = 'الإعلانات';
  //

  static const hintTextSearchHomeScrn = 'ابحث الطلب الذي تريده هنا';
  //

  // Settings Screen

  static const notificationSettingsScrn = 'الاشعارات';
  //

  static const managePasswordSettingsScrn = 'ادارة كلمة المرور';
  //

  static const deleteAccountSettingsScrn = 'حذف الحساب';
  //

  static const titleFAQScrn = 'الاسئلة الشائعة والمتكررة';

  //

  static List<StringTextFAQ> listTextFAQScrn = [
    //
    StringTextFAQ(
      textTitle: 'كيف يمكنني إزالة معلومات تتعلق بي؟',
      textSubTitle: '',
    ),
    //End List StringTextFAQ
  ];

  //

  //
}

class StringTextFAQ {
  //
  final String textTitle;
  final String textSubTitle;

  StringTextFAQ({required this.textTitle, required this.textSubTitle});
}
