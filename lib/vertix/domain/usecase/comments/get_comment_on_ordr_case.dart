import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../entities/comment_entites.dart';
import '../../repositories/repositories_domain.dart';

class GetCommentOnOrdrUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetCommentOnOrdrUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, List<CommentOnOrderEntities>>> call({
    required String sidToekn,
    required String idOrder,
  }) {
    //
    //

    //
    return repositoriesDomain.getCommentOnOrdr(
      sidToekn: sidToekn,
      idOrder: idOrder,
    );
    //
  }
}
