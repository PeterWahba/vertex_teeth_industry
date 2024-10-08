import 'package:vertex_teeth_industry/vertix/domain/entities/add_order_vertix_entities.dart';

import 'tooth_history_log_model.dart';

class AddOrderVertixModel extends AddOrderVertixEntities {
  //

  const AddOrderVertixModel({
    required super.age,
    required super.dentistName,
    required super.noteOrder,
    required super.dateTime,
    required super.vita3DMaster,
    required super.vitaClassical,
    required super.patientName,
    required super.gender,
    required super.isDigital,
    required super.listToothHistoryLogEntities,
  });

  //

  //
  Map<String, dynamic> toJson(
      {required List<ToothHistoryLogModel> listToothHistoryLogModel}) {
    //
    //
    return
        //

        // ===================
        {
      'dentist_name': dentistName,
      // 'dentist_name': "Test API",

      'patient_name': patientName,
      'vita_3d_master': vita3DMaster,
      'vita_classical': vitaClassical,

      'note': noteOrder,
      'gender': gender,
      'age': age,
      'date': dateTime,
      'is_digital': isDigital,

      'tooth_history_log':
          listToothHistoryLogModel.map((item) => item.toJson()).toList(),

      //
    };
  }
  //
  // End Class
}
