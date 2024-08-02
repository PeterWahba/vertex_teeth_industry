import 'package:equatable/equatable.dart';

import 'tooth_history_log_entities.dart';

class DetailsOrderVertexEntities extends Equatable {
  //

  final String idOrder;
  final String patientName;
  final String? vitaClassical;
  final String? vita3DMaster;

  final String gender;
  final String postingDate;
  final String orderState;
  final String? notes;
  final String? rejectedReason;
  final int isDigital;
  final double totalAmount;
  final int age;
  final List<ToothHistoryLogEntities> listToothHistoryLogEntites;

  const DetailsOrderVertexEntities({
    required this.patientName,
    required this.gender,
    required this.idOrder,
    required this.vita3DMaster,
    required this.vitaClassical,
    required this.orderState,
    required this.postingDate,
    required this.rejectedReason,
    required this.isDigital,
    required this.totalAmount,
    required this.age,
    required this.notes,
    required this.listToothHistoryLogEntites,
  });
  @override
  List<Object?> get props => [
        //
        patientName,
        gender,
        postingDate,
        isDigital,
        totalAmount,
        vita3DMaster,
        vitaClassical,
        age,
        idOrder,
        notes,
        orderState,
        rejectedReason,
        listToothHistoryLogEntites,
        //
      ];

  // End Entities
}
