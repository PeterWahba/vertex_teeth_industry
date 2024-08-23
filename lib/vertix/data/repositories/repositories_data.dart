import 'package:dartz/dartz.dart';

import 'package:vertex_teeth_industry/core/error/failures.dart';
import 'package:vertex_teeth_industry/vertix/data/model/add_order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/add_order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/comment_entites.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_payment_entry_entities.dart';
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
    } on SessionExpiredException {
      //

      return left(SessionExpiredFailure());
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
        vita3DMaster: addOrderVertixEntites.vita3DMaster,
        vitaClassical: addOrderVertixEntites.vitaClassical,
        dentistName: addOrderVertixEntites.dentistName,
        dateTime: addOrderVertixEntites.dateTime,
        noteOrder: addOrderVertixEntites.noteOrder,
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
    } on SessionExpiredException {
      //

      return left(SessionExpiredFailure());
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

  @override
  Future<Either<Failure, DetailesPaymentEntryEntities>> getDetailsPaymentEntry(
      {required String sidToekn, required String idNamePayment}) async {
    //

    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      //

      final reslt = await eRPnextDataSource.getDetailsPaymentEntryDataSource(
        sidToken: sidToekn,
        idNamePayment: idNamePayment,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on EmptyDetailspaymentEntryException {
      //

      return left(EmptyDetailspaymentEntryFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get  Details Payment Entry Method
  }

  @override
  Future<Either<Failure, DetailsOrderVertexEntities>> getDetailsOrderVertex(
      {required String sidToekn, required String idOrder}) async {
    //

    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getDetailsOrderVertexDataSourse(
        sidToken: sidToekn,
        idOrder: idOrder,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on EmptyDetailsOrderVertexException {
      //

      return left(EmptyDetailsOrderVertexFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get  Details  Order Vertex Method
  }

  @override
  Future<Either<Failure, Unit>> rejectOrderVertextWithMessage(
      {required String sidToekn,
      required String idOrder,
      required String messageReject}) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      //

      //

      final reslt =
          await eRPnextDataSource.rejectOrderVertextWithMessageDataSource(
        sidToken: sidToekn,
        idOrder: idOrder,
        message: messageReject,
      );

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
  Future<Either<Failure, List<CommentOnOrderEntities>>> getCommentOnOrdr(
      {required String sidToekn, required String idOrder}) async {
    //

    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      final reslt = await eRPnextDataSource.getCommentsOnOrderDataSource(
        sidToken: sidToekn,
        idOrder: idOrder,
      );
      //
      return right(reslt);
    } on UnKnownException {
      //

      return left(UnKnownFailre());
      //
    } on EmptyCommentsOnOrderException {
      //

      return left(EmptyCommentsOnOrderFailure());
      //
    } on ServerException {
      //

      return left(ServerFailre());
      //
    }

    //  End Get Comment   On  Order Vertex Method
  }

  @override
  Future<Either<Failure, Unit>> addCommentOnOrdr({
    required String sidToekn,
    required String idOrder,
    required String commentText,
  }) async {
    //
    //

    if (!await netWorkInfo.isConnected) {
      //

      return left(OffLineFailer());
    }

    try {
      //

      //

      final reslt = await eRPnextDataSource.addCommentsOnOrderDataSource(
        sidToken: sidToekn,
        idOrder: idOrder,
        commentText: commentText,
      );

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
    // end Method Add Comments
  }

  //
  // End Repositories Class
}
