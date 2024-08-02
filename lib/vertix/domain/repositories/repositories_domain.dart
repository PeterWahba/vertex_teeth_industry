import 'package:dartz/dartz.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/add_order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_payment_entry_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/payment_entry_user_entities.dart';
//
import '../../../core/error/failures.dart';
import '../entities/order_vertix_entities.dart';
import '../entities/user_register_entites.dart';

abstract class RepositoriesDomain {
  // Log In
  Future<Either<Failure, UserRegisterEntites>> registerUser({
    required String userEmail,
    required String userPassWord,
  });

  //
  //  Get All Order Vertix
  Future<Either<Failure, List<OrderVertixEntities>>> getAllVertixOrder({
    required String sidToekn,
    // required String userPassWord,
  });

  //
  //  Get All Order Vertix
  Future<Either<Failure, DetailsOrderVertexEntities>> getDetailsOrderVertex({
    required String sidToekn,
    required String idOrder,
  });

  //
  //  Get All Order Vertix
  Future<Either<Failure, Unit>> rejectOrderVertextWithMessage({
    required String sidToekn,
    required String idOrder,
    required String messageReject,
  });

  //
  //  Get All  Faq Question
  Future<Either<Failure, List<FAQQuestionEntities>>> getAllFAqQuestion({
    required String sidToekn,
    // required String userPassWord,
  });

  //
  //  Get All  Payment entry User
  Future<Either<Failure, List<PaymentEnteryUserEntities>>>
      getAllPaymentEntryUser({
    required String sidToekn,
    // required String userPassWord,
  });

  //
  //  Add  Order Vertix
  Future<Either<Failure, Unit>> addOrderVertix({
    required String sidToekn,
    required AddOrderVertixEntities addOrderVertixEntites,
    // required String userPassWord,
  });

  //
  //  Customr Name of Session User
  Future<Either<Failure, String>> getCustomerNameOfSessionUser({
    required String sidToekn,
  });

  //
  //  Customr Name of Session User
  Future<Either<Failure, List<String>>> getImagesBannerAds({
    required String sidToekn,
  });

  //
  //  get total Money Unpaid of User
  Future<Either<Failure, double>> getTotalMoneyUnpaidOfUser({
    required String sidToekn,
  });

  //
  //  get total Money Unpaid of User
  Future<Either<Failure, DetailesPaymentEntryEntities>> getDetailsPaymentEntry({
    required String sidToekn,
    required String idNamePayment,
  });

  // ====================
  // End Abstract Class
}
