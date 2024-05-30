import 'package:dartz/dartz.dart';

import 'package:vertex_teeth_industry/core/error/failures.dart';

import 'package:vertex_teeth_industry/vertix/domain/entities/user_register_entites.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/network/network_info.dart';
import '../../domain/repositories/repositories_domain.dart';
import '../datasource/erps_next_data_source.dart';

class RepositoriesDataImp implements RepositoriesDomain {
  //
  //

  //

  final NetWorkInfo netWorkInfo;
  final ERPnextDataSource eRPnextDataSource;

  RepositoriesDataImp(
      {required this.netWorkInfo, required this.eRPnextDataSource});

  //
  @override
  Future<Either<Failure, UserRegisterEntites>> registerUser(
      {required String userEmail, required String userPassWord}) async {
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.registerUserData(
          userEmail: userEmail, userPassWord: userPassWord);
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    // End Method Register
  }
  // End Repositories Class
}
