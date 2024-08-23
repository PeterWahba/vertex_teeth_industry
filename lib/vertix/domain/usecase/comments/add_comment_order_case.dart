import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../repositories/repositories_domain.dart';

class AddCommentOrderUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  AddCommentOrderUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, Unit>> call({
    required String sidToekn,
    required String idOrdr,
    required String commentText,
  }) {
    //
    return repositoriesDomain.addCommentOnOrdr(
      sidToekn: sidToekn,
      idOrder: idOrdr,
      commentText: commentText,
    );
    //
  }
}
