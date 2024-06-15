import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../repositories/repositories_domain.dart';

class GetTotalMoneuUnpaidUserUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetTotalMoneuUnpaidUserUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, double>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getTotalMoneyUnpaidOfUser(
      sidToekn: sidToekn,
    );
    //
  }
}
