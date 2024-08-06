import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/add_order_vertix_entities.dart';
import '../repositories/repositories_domain.dart';

class AddOrderVertixUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  AddOrderVertixUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, Unit>> call(
      {required String sidToekn,
      required AddOrderVertixEntities addOrderVertixEntites}) {
    //
    return repositoriesDomain.addOrderVertix(
      sidToekn: sidToekn,
      addOrderVertixEntites: addOrderVertixEntites,
    );
    //
  }
}
