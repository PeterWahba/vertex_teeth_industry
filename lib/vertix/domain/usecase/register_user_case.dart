import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/user_register_entites.dart';
import '../repositories/repositories_domain.dart';

class RegisterUseCase {
  //
  final RepositoriesDomain repositoriesDomain;

  RegisterUseCase({required this.repositoriesDomain});

  //

  Future<Either<Failure, UserRegisterEntites>> call({
    required String userEmail,
    required String userPassWord,
  }) {
    //
    return repositoriesDomain.registerUser(
        userEmail: userEmail, userPassWord: userPassWord);
    //
  }
}
