import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_result.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<QuestionResult> summaryData;

  @override
  Widget build(Object context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (result) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: result.isCorrect()
                              ? Colors.lightGreen
                              : Colors.redAccent),
                      child: Text(
                        result.getIndexDisplay(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 34, 135),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              result.question,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              result.userAnswer,
                              style: const TextStyle(
                                color: Colors.pinkAccent,
                              ),
                            ),
                            Text(
                              result.correctAnswer,
                              style: const TextStyle(
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
