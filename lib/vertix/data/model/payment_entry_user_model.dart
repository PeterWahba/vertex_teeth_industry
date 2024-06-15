import '../../domain/entities/payment_entry_user_entities.dart';

class PaymentEntryUserModel extends PaymentEnteryUserEntities {
  //
  const PaymentEntryUserModel({
    required super.idPayment,
    required super.paidAmountMoneyTotal,
    required super.timeCreation,
    required super.partyNameUser,
  });
  //

  factory PaymentEntryUserModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    return PaymentEntryUserModel(
      idPayment: json['name'],
      paidAmountMoneyTotal: json['paid_amount'],
      timeCreation: json['creation'],
      partyNameUser: json['party'],
    );
  }

  // end class
}
