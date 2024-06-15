import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/order_vertix_entities.dart';
import '../repositories/repositories_domain.dart';

class GetOrderVertixUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetOrderVertixUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, List<OrderVertixEntities>>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getAllVertixOrder(
      sidToekn: sidToekn,
    );
    //
  }
}
