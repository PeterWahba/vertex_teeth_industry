import 'package:equatable/equatable.dart';

class OrderVertixEntities extends Equatable {
  //

  /*
   "name": "ORD-Iraq-06-24-00003",
      "order_status": "Pending approval",
      "creation": "2024-06-01 21:23:19.204039",
      "patient_name": "diff",
      "total_amount": 40000,
      "is_paid": 0
  */

  final String idOrder;
  final String patientName;
  final String orderState;
  final String postingTime;
  final double totalAmount;
  final int isPaid;

  const OrderVertixEntities({
    required this.idOrder,
    required this.patientName,
    required this.orderState,
    required this.postingTime,
    required this.totalAmount,
    required this.isPaid,
  });
  @override
  List<Object?> get props => [
        //
        idOrder,
        patientName,
        orderState,
        postingTime,
        totalAmount,
        isPaid,
        //
      ];

  // End Entities
}
