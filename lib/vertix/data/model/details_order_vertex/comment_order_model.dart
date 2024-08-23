// CommentOnOrderEntities

import '../../../domain/entities/comment_entites.dart';

class CommentOnOrderModel extends CommentOnOrderEntities {
  //

  const CommentOnOrderModel({
    required super.emailText,
    required super.textComment,
    required super.timeCreation,
  });

  /*
  {
    "message": [
        {
            "content": "This is me administrator",
            "creation": "2024-08-09 16:09:24.530831",
            "comment_by": "Administrator"
        },
        {
            "content": "test",
            "creation": "2024-08-09 15:38:43.171897",
            "comment_by": "Administrator"
        }
    ]
}
  */

  Map<String, dynamic> toJson() {
    //
    //
    return {
      'comment': textComment,

      //
    };
  }

  factory CommentOnOrderModel.fromJson({
    required Map<String, dynamic> json,
  }) {
    return CommentOnOrderModel(
      emailText: json['comment_by'],
      textComment: json['content'],
      timeCreation: json['creation'],
    );
  }

  //

  //
//  End Class
}
