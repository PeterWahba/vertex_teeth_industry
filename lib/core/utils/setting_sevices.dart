import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingGetServicesClass extends GetxService {
  //
  late SharedPreferences sharedPrefs;

  Future<SettingGetServicesClass> init() async {
    // Start Services
    sharedPrefs = await SharedPreferences.getInstance();
    // End Services
    return this;
  }
}
