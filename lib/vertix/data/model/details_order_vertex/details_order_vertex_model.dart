import 'package:vertex_teeth_industry/vertix/data/model/tooth_history_log_model.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';

import '../../../domain/entities/details_order_vertex_entities.dart';

class DetailsOrderVertexModel extends DetailsOrderVertexEntities {
  const DetailsOrderVertexModel({
    required super.patientName,
    required super.gender,
    required super.rejectedReason,
    required super.orderState,
    required super.postingDate,
    required super.isDigital,
    required super.totalAmount,
    required super.age,
    required super.notes,
    required super.listToothHistoryLogEntites,
  });
  //
  factory DetailsOrderVertexModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    //
    List<ToothHistoryLogEntities> listToothHistory = [];
    //
    final listJsonTooth = json['tooth_history_log'];

    //
    if (listJsonTooth != null) {
      listJsonTooth.forEach((value) {
        listToothHistory.add(ToothHistoryLogModel.fromJson(json: value));
      });
    }
    //

    // tooth_history_log

    //
    return DetailsOrderVertexModel(
      patientName: json['patient_name'],
      rejectedReason: json['case_rejected_reason'],
      orderState: json['order_status'],
      gender: json['gender'],
      postingDate: json['posting_date'],
      notes: json['notes'],
      age: json['age'],
      isDigital: json['is_digital'],
      totalAmount: json['total_amount'],
      listToothHistoryLogEntites: listToothHistory,
    );
  }
} //end Class
