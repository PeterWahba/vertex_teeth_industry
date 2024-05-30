import '../../domain/entities/user_register_entites.dart';

class UserRegisterModel extends UserRegisterEntites {
  //
  const UserRegisterModel({
    required super.doctorName,
    required super.idToken,
  });

  //idUser: json['idUser'],

  factory UserRegisterModel.fromJson({
    required String fullName,
    required Map<String, dynamic> json,
    required List<String> listRoleString,
  }) {
    return UserRegisterModel(
      doctorName: json['sid'],
      idToken: json['sid'],
    );
  }

  //
//  End Class
}
