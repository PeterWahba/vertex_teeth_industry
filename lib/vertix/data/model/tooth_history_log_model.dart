import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';

class ToothHistoryLogModel extends ToothHistoryLogEntities {
  //
  //
  const ToothHistoryLogModel({
    required super.teethGroupNames,
    required super.toothDescription,
    required super.teethGroupNamesString,
    required super.toothStatus,
    required super.productType,
    required super.pfmLaser,
    required super.tempoary,
    required super.inlayAndOnlay,
    required super.zicronFacingEMax,
    required super.zicronFullAnatomy,
    required super.zicronLayered,
    required super.zicronPrettauAnterior,
    required super.eMaxPress,
    required super.eMaxSuprem,
  });

  //

//
  Map<String, dynamic> toJson() {
    return {
      'tooth_name': teethGroupNamesString,
      'tooth_description': toothDescription,
      'tooth_status': toothStatus,
      'product_type': productType,
      'pfm_laser': pfmLaser,
      'tempoary': tempoary,
      'inlay_and_onlay': inlayAndOnlay,
      'zircon_facing_e_max': zicronFacingEMax,
      'zircon_full_anatomy': zicronFullAnatomy,
      'zircon_layered': zicronLayered,
      'zircon_prettau_anterior': zicronPrettauAnterior,
      'e_max_press': eMaxPress,
      'e_max_suprem': eMaxSuprem,
    };
    //
  }

//  End Class Model
}
