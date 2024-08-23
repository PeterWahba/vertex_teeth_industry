import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';

class FAQQuestionModel extends FAQQuestionEntities {
  //

  const FAQQuestionModel({
    required super.question,
    required super.answer,
  });

  /*
        "question": "كيف يعمل طلب؟",
      "answer": "يكون الطلب من الواجعة طلبات وبعدها يتم مراجعة الطلب من قبل الادمن"
  */
  factory FAQQuestionModel.fromJson({
    required Map<String, dynamic> json,
    // required List<String> listRoleString,
  }) {
    return FAQQuestionModel(
      question: json['question'],
      answer: json['answer'],
    );
  }

  //
//  End Class
}
