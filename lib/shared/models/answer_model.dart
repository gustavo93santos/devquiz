import 'dart:convert';

class AnswerMoldel {
  final String title;
  final bool isRight;

  AnswerMoldel({
    required this.title, 
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswerMoldel.fromMap(Map<String, dynamic> map) {
    return AnswerMoldel(
      title: map['title'],
      isRight: map['isRight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerMoldel.fromJson(String source) => AnswerMoldel.fromMap(json.decode(source));
}
