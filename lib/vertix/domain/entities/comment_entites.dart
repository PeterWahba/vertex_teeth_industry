import 'package:equatable/equatable.dart';

class CommentOnOrderEntities extends Equatable {
  //

  final String? emailText;
  final String textComment;
  final String? timeCreation;

  const CommentOnOrderEntities({
    required this.emailText,
    required this.timeCreation,
    required this.textComment,
  });
  @override
  List<Object?> get props => [
        emailText,
        textComment,
        timeCreation,
      ];

  // Enad Class
}
