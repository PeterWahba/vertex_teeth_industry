import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vertix/vertix/presentation/controller/register_contrlr/register_controller.dart';

import '../../../../core/network/network_info.dart';
import '../../../data/datasource/erps_next_data_source.dart';
import '../../../data/repositories/repositories_data.dart';
import '../../../domain/repositories/repositories_domain.dart';
import '../../../domain/usecase/register_user_case.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    //
    // Controller
    Get.lazyPut<RegisterController>(
      () => RegisterController(
        registerUseCase: Get.find(),
      ),
    );

    // Use Case

    Get.lazyPut<RegisterUseCase>(
        () => RegisterUseCase(repositoriesDomain: Get.find()));

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

    // End Dependincies
  }

  // End Class
  //
}
