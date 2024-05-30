import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetWorkInfo {
  Future<bool> get isConnected;
}

//  if something happen to this package we can replace with another
// it meANS we can create another class here and the most change could become just here
class NetWorkInfoImpl implements NetWorkInfo {
  final InternetConnectionChecker connectionChecker;

  NetWorkInfoImpl({required this.connectionChecker});
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
