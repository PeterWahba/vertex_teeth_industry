import 'package:equatable/equatable.dart';

import 'tooth_history_log_entities.dart';

class DetailsOrderVertexEntities extends Equatable {
  //

  final String patientName;
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
        age,
        notes,
        orderState,
        rejectedReason,
        listToothHistoryLogEntites,
        //
      ];

  // End Entities
}
