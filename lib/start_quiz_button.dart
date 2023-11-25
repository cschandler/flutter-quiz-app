import 'package:flutter/material.dart';

class StartQuizButton extends StatelessWidget {
  final void Function() startQuiz;

  const StartQuizButton({
    required this.startQuiz,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        startQuiz();
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      icon: const Icon(Icons.access_alarm_outlined),
      label: const Text(
        'Start Quiz',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}
