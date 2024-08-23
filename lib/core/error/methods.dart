import 'package:vertex_teeth_industry/core/error/failure_text.dart';

import 'failures.dart';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    //
    case OffLineFailer:
      return OFFLINE_FAILURE_MESSAGE;
    //
    //
    //
    case EmailOrPassWordWrongFailure:
      return EMAIL_PASSWORD_WRONG_MESSAGE;
    //
    //
    case ServerFailre:
      return SERVER_FAILURE_MESSAGE;
    //
    //
    case GetOrderVertixEmptyFailure:
      return GET_ORDER_VERTIX_EMPTY_MESSAGE;
    //
    case GetPaymentEntryUserEmptyFailure:
      return PAYMENT_ENTRY_EMPTY_MESSAGE;
    //
    case CustomerNameForSessionUserEmptyFailure:
      return CUSTOMER_NAME_SESSION_USER_EMPTY;
    //
    case TotalMoneyUnpaidUserEmptyFailure:
      return TOTAL_MONEY_UNPAID_EMPTY_MESSAGE;
    //
    case ImagesBannerAdsEmptyFailure:
      return IMAGES_BANNER_ADS_EMPTY;
    //
    //
    case FAQQuestionEmptyFailure:
      return FAQ_QUESTION_EMPTY_MESSAGE;
    //
    case EmptyDetailspaymentEntryFailure:
      return DETAILS_PAYMENT_ENTRY_MESSAGE;
    //
    case EmptyDetailsOrderVertexFailure:
      return EMPTY_DETAILS_ORDER_VERTEX_MESSAGE;
    //
    case SessionExpiredFailure:
      return SESSION_EXPIRED_MESSAGE;
    //
    case EmptyCommentsOnOrderFailure:
      return EMPTY_COMMENT_ON_ORDER_MESSAGE;
    //
    //

    default:
      return 'خطأ غير متوقع , حاول لاحقاَ';
  }
}
