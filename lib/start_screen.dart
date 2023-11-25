import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz_button.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          StartQuizButton(startQuiz: startQuiz),
        ],
      ),
    );
  }
}
