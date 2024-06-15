import 'package:equatable/equatable.dart';

class ToothHistoryLogEntities extends Equatable {
  //
  final List<String> teethGroupNames;
  final String teethGroupNamesString;
  final String toothDescription;
  final String toothStatus;
  final String productType;
  final int pfmLaser;
  final int tempoary;
  final int inlayAndOnlay;
  final int zicronFacingEMax;
  final int zicronFullAnatomy;
  final int zicronLayered;
  final int zicronPrettauAnterior;
  final int eMaxPress;
  final int eMaxSuprem;

  const ToothHistoryLogEntities({
    required this.teethGroupNames,
    required this.teethGroupNamesString,
    required this.toothDescription,
    required this.toothStatus,
    required this.productType,
    required this.pfmLaser,
    required this.tempoary,
    required this.inlayAndOnlay,
    required this.zicronFacingEMax,
    required this.zicronFullAnatomy,
    required this.zicronLayered,
    required this.zicronPrettauAnterior,
    required this.eMaxPress,
    required this.eMaxSuprem,
  });

  @override
  List<Object?> get props => [
        teethGroupNames,
        toothDescription,
        toothStatus,
        teethGroupNamesString,
        productType,
        pfmLaser,
        tempoary,
        inlayAndOnlay,
        zicronFacingEMax,
        zicronFullAnatomy,
        zicronLayered,
        zicronPrettauAnterior,
        eMaxPress,
        eMaxSuprem,
      ];

  // End Class
}
