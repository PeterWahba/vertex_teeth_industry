import 'dart:convert';

import '../../../core/error/exceptions.dart';
import '../../domain/entities/user_register_entites.dart';
import 'package:http/http.dart' as http;

import '../model/user_register_mold.dart';

abstract class ERPnextDataSource {
  Future<UserRegisterEntites> registerUserData({
    required String userEmail,
    required String userPassWord,
  });
}

const baseURL = 'https://vertex.frappe.cloud';

class ERPnextDataSourceImple implements ERPnextDataSource {
  //
  //

  @override
  Future<UserRegisterEntites> registerUserData(
      {required String userEmail, required String userPassWord}) async {
    //

    UserRegisterEntites? userRegisterEntites;
    //
    String url =
        // 'https://vertex.frappe.cloud?User=api@micronext.net&Pass=90807060';
        'https://vertex.frappe.cloud/api/method/vertex_app.api.login?usr=api@micronext.net&pwd=90807060';

    //
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //
      final extrctedData = json.decode(response.body);

      print('\n');
      print('====================================================');
      print('\n');
      print('The register Data is $extrctedData');
      print('\n');
      print('====================================================');
      print('\n');

      // final fullName = extrctedData['full_name'];

      // userRegisterEntites = UserRegisterModel.fromJson(
      //   fullName: extrctedData['full_name'],
      //   json: extrctedData['message'],
      //   listRoleString: listRoleString,
      // );

      return Future.value(userRegisterEntites);
    } else if (response.statusCode == 500) {
      //
      print('\n');
      print('====================================================');
      print('\n');
      print('The register Data is ${response.body}');
      print('\n');
      print('====================================================');
      print('\n');
      throw ServerException();
      // return Future.value(unit);
    } else {
      print('\n');
      print('====================================================');
      print('\n');
      print('The register Data is ${response.body}');
      print('\n');
      print('====================================================');
      print('\n');
      throw UnKnownException();
    }

    // End Method Register
    // ------------------------------------------
  }

  // End Class DataSource
}
