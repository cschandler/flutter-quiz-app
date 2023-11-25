import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/question_result.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<QuestionResult> getSummeryData() {
    final List<QuestionResult> summary = [];

    for (var (i, chosenAnswer) in chosenAnswers.indexed) {
      summary.add(
        QuestionResult(
          index: i,
          question: questions[i].text,
          correctAnswer: questions[i].answers[0],
          userAnswer: chosenAnswer,
        ),
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final int totalQuestions = summaryData.length;
    final int correctAnswers =
        summaryData.where((result) => result.isCorrect()).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correctly',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(getSummeryData()),
          ],
        ),
      ),
    );
  }
}
