import 'package:vertex_teeth_industry/vertix/domain/entities/details_payment_entry_entities.dart';

class DetailsPaymentEntryModel extends DetailesPaymentEntryEntities {
  //

  const DetailsPaymentEntryModel({
    required super.idPayment,
    required super.nameUser,
    required super.paidAmount,
    required super.partyBalance,
    required super.postingDate,
    required super.isOffer,
  });

  factory DetailsPaymentEntryModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    /*
name, party_name,posting_date,
 party_balance,paid_amount,custom_is_offer
*/
    return DetailsPaymentEntryModel(
      idPayment: json['name'],
      nameUser: json['party_name'],
      postingDate: json['posting_date'],
      partyBalance: json['party_balance'],
      paidAmount: json['paid_amount'],
      isOffer: json['custom_is_offer'],
    );
  }

  //
//  End Class
}
