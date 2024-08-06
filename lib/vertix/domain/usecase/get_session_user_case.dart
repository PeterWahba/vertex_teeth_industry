import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../repositories/repositories_domain.dart';

class GetCustomerNameOfSessionUserUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetCustomerNameOfSessionUserUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, String>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getCustomerNameOfSessionUser(
      sidToekn: sidToekn,
    );
    //
  }
}
