import 'package:vertex_teeth_industry/core/error/failure_text.dart';

import 'failures.dart';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    //
    case OffLineFailer:
      return OFFLINE_FAILURE_MESSAGE;
    //
    //

    default:
      return 'خطأ غير متوقع , حاول لاحقاَ';
  }
}
