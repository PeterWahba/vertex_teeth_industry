import 'package:equatable/equatable.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';

class AddOrderVertixEntities extends Equatable {
  //

  final String patientName;
  final String dentistName;
  final String noteOrder;
  final String gender;
  final String? vitaClassical;
  final String? vita3DMaster;

  final String dateTime;
  final int age;
  final int isDigital;
  final List<ToothHistoryLogEntities> listToothHistoryLogEntities;

  const AddOrderVertixEntities({
    required this.patientName,
    required this.dentistName,
    required this.noteOrder,
    required this.dateTime,
    required this.vita3DMaster,
    required this.vitaClassical,
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
        noteOrder,
        dateTime,
        age,
        isDigital,
        vita3DMaster,
        vita3DMaster,
        listToothHistoryLogEntities,
      ];

  // Enad Class
}
