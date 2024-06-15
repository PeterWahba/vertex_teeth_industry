import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/payment_entry_user_entities.dart';
import '../repositories/repositories_domain.dart';

class GetPaymentEntryUserUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetPaymentEntryUserUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, List<PaymentEnteryUserEntities>>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getAllPaymentEntryUser(
      sidToekn: sidToekn,
    );
    //
  }
}
