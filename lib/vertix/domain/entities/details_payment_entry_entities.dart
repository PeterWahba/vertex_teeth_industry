import 'package:equatable/equatable.dart';

class DetailesPaymentEntryEntities extends Equatable {
  //

  final String idPayment;
  final String nameUser;
  final String postingDate;
  final double partyBalance;
  final double paidAmount;
  final int isOffer;

  const DetailesPaymentEntryEntities({
    required this.idPayment,
    required this.nameUser,
    required this.postingDate,
    required this.paidAmount,
    required this.partyBalance,
    required this.isOffer,
  });
  @override
  List<Object?> get props => [
        //
        idPayment,
        nameUser,
        postingDate,
        paidAmount,
        partyBalance,
        isOffer,

        //
      ];

  // End Entities
}
