import 'package:dartz/dartz.dart';
import 'package:vertix/vertix/domain/entities/faq_question_entities.dart';

import '../../../core/error/failures.dart';
import '../repositories/repositories_domain.dart';

class GetFAQQuestionUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetFAQQuestionUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, List<FAQQuestionEntities>>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getAllFAqQuestion(
      sidToekn: sidToekn,
    );
    //
  }
}
