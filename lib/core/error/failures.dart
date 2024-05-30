import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

// Off line Failure

//
class OffLineFailer extends Failure {
  @override
  List<Object?> get props => [];
}

//
class UnKnownFailre extends Failure {
  @override
  List<Object?> get props => [];
}

//
class ServerFailre extends Failure {
  @override
  List<Object?> get props => [];
}
