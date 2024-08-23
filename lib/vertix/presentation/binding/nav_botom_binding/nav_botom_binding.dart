import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vertex_teeth_industry/vertix/domain/usecase/get_oder_vertix_case.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/details_order_vertex_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/profile_usr_controlr.dart';

import '../../../../core/network/network_info.dart';
import '../../../data/datasource/erps_next_data_source.dart';
import '../../../data/repositories/repositories_data.dart';
import '../../../domain/repositories/repositories_domain.dart';
import '../../../domain/usecase/add_order_vertix_case.dart';
import '../../../domain/usecase/comments/add_comment_order_case.dart';
import '../../../domain/usecase/details_order_vertex_case.dart';
import '../../../domain/usecase/faq_question_case.dart';
import '../../../domain/usecase/comments/get_comment_on_ordr_case.dart';
import '../../../domain/usecase/get_details_payment_entry.dart';
import '../../../domain/usecase/get_images_baner_ads_case.dart';
import '../../../domain/usecase/get_payment_entry_case.dart';
import '../../../domain/usecase/get_session_user_case.dart';
import '../../../domain/usecase/get_total_money_unpaidd_user.dart';
import '../../../domain/usecase/reject_order_with_mesg_case.dart';
import '../../controller/nav_botom_controlr/detalis_payment_entry_item_contrlr.dart';
import '../../controller/nav_botom_controlr/home_controllr.dart';
import '../../controller/nav_botom_controlr/payment_entry_conrtolr.dart';

class NavBotomBinding implements Bindings {
  @override
  void dependencies() {
    //
    // Controller
    Get.lazyPut<NavBottomController>(
      () => NavBottomController(),
    );

    //
    // Controller HomePage
    Get.lazyPut<HomePageController>(
      () => HomePageController(
        getCustomerNameOfSessionUserUseCase: Get.find(),
        getImagesBanerAdsUseCase: Get.find(),
      ),
    );
    //
    // Controller Details Order Vertex Controller
    //
    Get.lazyPut<DetailsOrderVertexController>(
      () => DetailsOrderVertexController(
        getDetailsOrderVertexUseCase: Get.find(),
        rejectOrderWithMessagUseCase: Get.find(),
        getCommentOnOrdrUseCase: Get.find(),
        addCommentOrderUseCase: Get.find(),
      ),
    );
    //

    //
    // Controller Profile
    Get.lazyPut<ProfileUsrController>(
      () => ProfileUsrController(
        totalMoneuUnpaidUserUseCase: Get.find(),
        getFAQQuestionUseCase: Get.find(),
      ),
    );
    //

    //
    // Controller Payment entry
    Get.lazyPut<PaymentEntryUserController>(
      () => PaymentEntryUserController(getPaymentEntryUserUseCase: Get.find()),
    );
    //

    //
    // Controller Details Payment entry
    Get.lazyPut<DetailsPaymentEntryItemController>(
      () => DetailsPaymentEntryItemController(
          getDetailsPaymentEntryUseCase: Get.find()),
    );
    //

    //
    // Controller Profile
    Get.lazyPut<CreateNewRequestController>(
      () => CreateNewRequestController(
        addOrderVertixUseCase: Get.find(),
        getOrderVertixUseCase: Get.find(),
      ),
    );
    //

    //
    // Use Case add Comments Order  Vertex

    Get.lazyPut<AddCommentOrderUseCase>(
        () => AddCommentOrderUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case  Get Comments Order  Vertex

    Get.lazyPut<GetCommentOnOrdrUseCase>(
        () => GetCommentOnOrdrUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case  Reject Order  Vertex

    Get.lazyPut<RejectOrderWithMessagUseCase>(
        () => RejectOrderWithMessagUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case  Details Order Vertex

    Get.lazyPut<GetDetailsOrderVertexUseCase>(
        () => GetDetailsOrderVertexUseCase(repositoriesDomain: Get.find()));
    //
    // Use Case  Details Payment Entry

    Get.lazyPut<GetDetailsPaymentEntryUseCase>(
        () => GetDetailsPaymentEntryUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case FAQ Question

    Get.lazyPut<GetFAQQuestionUseCase>(
        () => GetFAQQuestionUseCase(repositoriesDomain: Get.find()));
    //
    //
    // Use Case Images Banner Ads

    Get.lazyPut<GetImagesBanerAdsUseCase>(
        () => GetImagesBanerAdsUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case total Money Unpaid User

    Get.lazyPut<GetTotalMoneuUnpaidUserUseCase>(
        () => GetTotalMoneuUnpaidUserUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case Payment Entry

    Get.lazyPut<GetPaymentEntryUserUseCase>(
        () => GetPaymentEntryUserUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case GetCustomerName

    Get.lazyPut<GetCustomerNameOfSessionUserUseCase>(() =>
        GetCustomerNameOfSessionUserUseCase(repositoriesDomain: Get.find()));
    //

    //
    // Use Case Add Order Vertix

    Get.lazyPut<AddOrderVertixUseCase>(
        () => AddOrderVertixUseCase(repositoriesDomain: Get.find()));

    //
    //
    // Use Case Get Order Vertix

    Get.lazyPut<GetOrderVertixUseCase>(
        () => GetOrderVertixUseCase(repositoriesDomain: Get.find()));

    //

    //

    // Repositories
    Get.lazyPut<RepositoriesDomain>(() => RepositoriesDataImp(
        eRPnextDataSource: Get.find(), netWorkInfo: Get.find()));

    // Data source

    Get.lazyPut<ERPnextDataSource>(() => ERPnextDataSourceImple());

    // Core

    Get.lazyPut<NetWorkInfo>(
        () => NetWorkInfoImpl(connectionChecker: Get.find()));

    // External

    Get.lazyPut(() => InternetConnectionChecker());

    //

    // End Method
  }

  // End Class
  //
}
