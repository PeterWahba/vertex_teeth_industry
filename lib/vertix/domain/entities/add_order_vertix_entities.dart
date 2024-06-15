import 'package:equatable/equatable.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';

class AddOrderVertixEntities extends Equatable {
  //

  final String patientName;
  final String dentistName;
  final String gender;
  final String dateTime;
  final int age;
  final int isDigital;
  final List<ToothHistoryLogEntities> listToothHistoryLogEntities;

  const AddOrderVertixEntities({
    required this.patientName,
    required this.dentistName,
    required this.dateTime,
    required this.gender,
    required this.age,
    required this.isDigital,
    required this.listToothHistoryLogEntities,
  });
  @override
  List<Object?> get props => [
        patientName,
        dentistName,
        gender,
        dateTime,
        age,
        isDigital,
        listToothHistoryLogEntities,
      ];

  // Enad Class
}
