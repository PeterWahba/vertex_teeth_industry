import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/details_payment_entry_entities.dart';
import '../repositories/repositories_domain.dart';

class GetDetailsPaymentEntryUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetDetailsPaymentEntryUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, DetailesPaymentEntryEntities>> call({
    required String sidToekn,
    required String idNamePayment,
  }) {
    //
    return repositoriesDomain.getDetailsPaymentEntry(
      sidToekn: sidToekn,
      idNamePayment: idNamePayment,
    );
    //
  }
}
