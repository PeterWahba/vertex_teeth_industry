import 'package:equatable/equatable.dart';

class UserRegisterEntites extends Equatable {
//

  final String doctorName;
  final String idToken;

  const UserRegisterEntites({required this.doctorName, required this.idToken});

  @override
  List<Object?> get props => [
        //
        doctorName,
        idToken,
        //
      ];

  // End Class
}
