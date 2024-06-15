import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../repositories/repositories_domain.dart';

class GetImagesBanerAdsUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  GetImagesBanerAdsUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, List<String>>> call({
    required String sidToekn,
  }) {
    //
    return repositoriesDomain.getImagesBannerAds(
      sidToekn: sidToekn,
    );
    //
  }
}
