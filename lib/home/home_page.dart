import 'package:devquiz/home/home_controller.dart';
import 'package:devquiz/home/widgets/appbar/appbar.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widfet.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBarWidget(user: controller.user!,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  LevelButtonWidget(label: "Fácil"),
                  SizedBox(
                    width: 5,
                  ),
                  LevelButtonWidget(label: "Médio"),
                  SizedBox(
                    width: 5,
                  ),
                  LevelButtonWidget(label: "Difícil"),
                  SizedBox(
                    width: 5,
                  ),
                  LevelButtonWidget(label: "Perito"),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
