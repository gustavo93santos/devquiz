import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      answers: List<AnswerMoldel>.from(map['answers']?.map((x) => AnswerMoldel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
