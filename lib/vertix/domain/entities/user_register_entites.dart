import 'package:equatable/equatable.dart';

class UserRegisterEntites extends Equatable {
//

  final String doctorFullName;
  final String emailUser;
  final String sidToken;
  // final String apiKeyToken;
  // final String apiSecretToken;

  const UserRegisterEntites(
      {required this.doctorFullName,
      required this.sidToken,
      required this.emailUser});

  @override
  List<Object?> get props => [
        //
        doctorFullName,
        sidToken,
        emailUser,
        //
      ];

  // End Class
}
