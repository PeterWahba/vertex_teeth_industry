import 'package:dartz/dartz.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';

import '../../../core/error/failures.dart';
import '../entities/details_order_vertex_entities.dart';
import '../repositories/repositories_domain.dart';

class GetDetailsOrderVertexUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetDetailsOrderVertexUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, DetailsOrderVertexEntities>> call({
    required String sidToekn,
    required String idOrder,
  }) {
    //
    return repositoriesDomain.getDetailsOrderVertex(
      sidToekn: sidToekn,
      idOrder: idOrder,
    );
    //
  }
}
