import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

// Off line Failure

//
class OffLineFailer extends Failure {
  @override
  List<Object?> get props => [];
}

//
class UnKnownFailre extends Failure {
  @override
  List<Object?> get props => [];
}

//
class GetOrderVertixEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class GetPaymentEntryUserEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class ServerFailre extends Failure {
  @override
  List<Object?> get props => [];
}

//
class EmailOrPassWordWrongFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class CustomerNameForSessionUserEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class TotalMoneyUnpaidUserEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class ImagesBannerAdsEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class FAQQuestionEmptyFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class EmptyDetailspaymentEntryFailure extends Failure {
  @override
  List<Object?> get props => [];
}

//
class EmptyDetailsOrderVertexFailure extends Failure {
  @override
  List<Object?> get props => [];
}
