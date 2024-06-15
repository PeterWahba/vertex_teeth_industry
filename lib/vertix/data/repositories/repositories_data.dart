import 'package:dartz/dartz.dart';

import 'package:vertex_teeth_industry/core/error/failures.dart';
import 'package:vertex_teeth_industry/vertix/data/model/add_order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/add_order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/payment_entry_user_entities.dart';

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
    } on EmailOrPassWordWrongException {
      //

      return left(EmailOrPassWordWrongFailure());
      //
    }

    // End Method Register
  }

  @override
  Future<Either<Failure, List<OrderVertixEntities>>> getAllVertixOrder(
      {required String sidToekn}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getAllVertixOrder(
        sidToken: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on GetOrderVertixEmptyException {
      //

      return left(GetOrderVertixEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get AllOrderVertix Method
  }

  @override
  Future<Either<Failure, Unit>> addOrderVertix(
      {required String sidToekn,
      required AddOrderVertixEntities addOrderVertixEntites}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      //

      AddOrderVertixModel addOrderVertixModel = AddOrderVertixModel(
        dentistName: addOrderVertixEntites.dentistName,
        dateTime: addOrderVertixEntites.dateTime,
        age: addOrderVertixEntites.age,
        patientName: addOrderVertixEntites.patientName,
        gender: addOrderVertixEntites.gender,
        isDigital: addOrderVertixEntites.isDigital,
        listToothHistoryLogEntities:
            addOrderVertixEntites.listToothHistoryLogEntities,
      );

      //

      final reslt = await eRPnextDataSource.addOrderVertix(
          sidToekn: sidToekn, addOrderVertixModel: addOrderVertixModel);

      //
      return right(reslt);

      // End Try
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }
    //
  }

  @override
  Future<Either<Failure, List<PaymentEnteryUserEntities>>>
      getAllPaymentEntryUser({required String sidToekn}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getAllPaymentEntryUser(
        sidToken: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on GetPaymentEntryUserEmptyException {
      //

      return left(GetPaymentEntryUserEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get Payment Entry Method
  }

  @override
  Future<Either<Failure, String>> getCustomerNameOfSessionUser(
      {required String sidToekn}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getCustomerNameOfSessionUser(
        sidToken: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on CustomerNameForSessionUserEmptyException {
      //

      return left(CustomerNameForSessionUserEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get  Customer Name Method
  }

  @override
  Future<Either<Failure, double>> getTotalMoneyUnpaidOfUser(
      {required String sidToekn}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getTotalMoneyUnpaidOfUser(
        sidToekn: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on TotalMoneyUnpaidUserEmptyException {
      //

      return left(TotalMoneyUnpaidUserEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get  Total Money Method
  }

  @override
  Future<Either<Failure, List<String>>> getImagesBannerAds(
      {required String sidToekn}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getImagesBannerAds(
        sidToken: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on ImagesBannerAdsEmptyException {
      //

      return left(ImagesBannerAdsEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get  Customer Name Method
  }

  @override
  Future<Either<Failure, List<FAQQuestionEntities>>> getAllFAqQuestion(
      {required String sidToekn}) async {
    //

    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getAllFAQQuestionData(
        sidToken: sidToekn,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on FAQQuestionEmptyException {
      //

      return left(FAQQuestionEmptyFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get FAQ Question Method
  }

  //
  // End Repositories Class
}
