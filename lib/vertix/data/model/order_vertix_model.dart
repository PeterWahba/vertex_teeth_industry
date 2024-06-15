import 'package:vertex_teeth_industry/vertix/domain/entities/order_vertix_entities.dart';

class OrderVertixModel extends OrderVertixEntities {
  //

  const OrderVertixModel({
    required super.idOrder,
    required super.patientName,
    required super.totalAmount,
    required super.postingTime,
    required super.orderState,
    required super.isPaid,
  });
  //idUser: json['idUser'],

  factory OrderVertixModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    return OrderVertixModel(
      idOrder: json['name'],
      isPaid: json['is_paid'],
      patientName: json['patient_name'],
      postingTime: json['creation'],
      orderState: json['order_status'],
      totalAmount: json['total_amount'],
    );
  }

  //
//  End Class
}
