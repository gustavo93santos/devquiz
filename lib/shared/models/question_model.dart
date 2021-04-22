import 'package:devquiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerMoldel> answers; 

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert (
    answers.length == 4,
  );
}
