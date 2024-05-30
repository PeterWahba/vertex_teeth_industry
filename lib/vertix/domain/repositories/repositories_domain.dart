import 'package:dartz/dartz.dart';
//
import '../../../core/error/failures.dart';
import '../entities/user_register_entites.dart';

abstract class RepositoriesDomain {
  // Log In
  Future<Either<Failure, UserRegisterEntites>> registerUser({
    required String userEmail,
    required String userPassWord,
  });
  // End Abstract Class
}
