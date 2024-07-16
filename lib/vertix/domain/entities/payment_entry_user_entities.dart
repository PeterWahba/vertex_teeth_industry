import 'package:equatable/equatable.dart';

class PaymentEnteryUserEntities extends Equatable {
  //

  /*
        "name": "ACC-PAY-2024-00002",
      "paid_amount": 250000,
      "creation": "2024-06-04 11:47:15.088027",
      "party": "Test API"
  */

  final String idPayment;
  final double paidAmountMoneyTotal;
  final String timeCreation;
  final String partyNameUser;
  final int isOffer;

  const PaymentEnteryUserEntities({
    required this.idPayment,
    required this.paidAmountMoneyTotal,
    required this.timeCreation,
    required this.isOffer,
    required this.partyNameUser,
  });
  @override
  List<Object?> get props => [
        idPayment,
        paidAmountMoneyTotal,
        timeCreation,
        partyNameUser,
        isOffer,
      ];

  // Enad Class
}
