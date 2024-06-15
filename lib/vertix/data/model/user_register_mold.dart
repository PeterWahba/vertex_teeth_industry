import '../../domain/entities/user_register_entites.dart';

class UserRegisterModel extends UserRegisterEntites {
  //
  const UserRegisterModel({
    required super.doctorFullName,
    required super.sidToken,
    required super.emailUser,
  });

  //idUser: json['idUser'],

  factory UserRegisterModel.fromJson({
    required String fullName,
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    return UserRegisterModel(
      doctorFullName: fullName,
      sidToken: json['sid'],
      emailUser: json['email'],
    );
  }

  //
//  End Class
}
