import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../repositories/repositories_domain.dart';

class RejectOrderWithMessagUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  RejectOrderWithMessagUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, Unit>> call({
    required String sidToekn,
    required String idOrder,
    required String messageReject,
  }) {
    //
    return repositoriesDomain.rejectOrderVertextWithMessage(
        sidToekn: sidToekn, idOrder: idOrder, messageReject: messageReject);
    //
  }
}
