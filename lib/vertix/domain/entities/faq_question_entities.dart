import 'package:equatable/equatable.dart';

class FAQQuestionEntities extends Equatable {
  //

  /*
      "question": "كيف يعمل طلب؟",
      "answer": "يكون الطلب من الواجعة طلبات وبعدها يتم مراجعة الطلب من قبل الادمن"
  */

  final String question;
  final String answer;

  const FAQQuestionEntities({
    required this.question,
    required this.answer,
  });
  @override
  List<Object?> get props => [
        //
        question,
        answer,

        //
      ];

  // End Entities
}
