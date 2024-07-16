import 'package:vertex_teeth_industry/vertix/domain/entities/tooth_history_log_entities.dart';

class ToothHistoryLogModel extends ToothHistoryLogEntities {
  //
  //
  const ToothHistoryLogModel({
    super.teethGroupNames,
    required super.toothDescription,
    required super.ndShadeGuide,
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
  /*
          "name": "pn6cdc3h0o",
        "owner": "mohammed@vertex.co",
        "creation": "2024-07-07 21:48:01.199270",
        "modified": "2024-07-07 21:59:17.726917",
        "modified_by": "admin@vertex.com",
        "docstatus": 1,
        "idx": 1,
        "tooth_name": "21,22",
        "tooth_description": "kl",
        "tooth_status": "good",
        "product_type": "Bridge",
        "patient_name": "sdfhklj",
        "pfm_laser": 0,
        "tempoary": 1,
        "inlay_and_onlay": 0,
        "zircon_facing_e_max": 0,
        "zircon_full_anatomy": 0,
        "zircon_layered": 0,
        "zircon_prettau_anterior": 0,
        "e_max_press": 0,
        "e_max_suprem": 0,
        "parent": "ORD-Iraq-07-24-00009",
        "parentfield": "tooth_history_log",
        "parenttype": "Vertex Order",
        "doctype": "Tooth History log"
  */
  //

  factory ToothHistoryLogModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    return ToothHistoryLogModel(
      // teethGroupNames: json[''],
      teethGroupNamesString: json['tooth_name'],
      ndShadeGuide: json['modified'],
      tempoary: json['tempoary'],
      toothDescription: json['tooth_description'],
      toothStatus: json['tooth_status'],
      productType: json['product_type'],
      zicronFacingEMax: json['zircon_facing_e_max'],
      zicronFullAnatomy: json['zircon_full_anatomy'],
      zicronLayered: json['zircon_layered'],
      zicronPrettauAnterior: json['zircon_prettau_anterior'],
      pfmLaser: json['pfm_laser'],
      eMaxPress: json['e_max_press'],
      eMaxSuprem: json['e_max_suprem'],
      inlayAndOnlay: json['inlay_and_onlay'],
    );
  }

//
  Map<String, dynamic> toJson() {
    return {
      'tooth_name': teethGroupNamesString,
      'tooth_description': toothDescription,
      'tooth_status': toothStatus,
      'product_type': productType,
      'nd_shade_guide': ndShadeGuide,
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
