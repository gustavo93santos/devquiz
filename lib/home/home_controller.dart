import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';

class HomeController {
  HomeState? state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Gustavo Santos",
      photoUrl: "https://avatars.githubusercontent.com/u/5822965?s=400&v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW05 Flutter",
        imagem: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter", 
            answers: [
              AnswerMoldel(title: "Estou curtindo"),
              AnswerMoldel(title: "Amando Flutter"),
              AnswerMoldel(title: "Muito top"),
              AnswerMoldel(title: "Show de bola", isRight: true),
            ]
          )
        ],
      )
    ];
  }
}
