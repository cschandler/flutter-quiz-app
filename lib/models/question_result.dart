class QuestionResult {
  final int index;
  final String question;
  final String correctAnswer;
  final String userAnswer;

  String getIndexDisplay() {
    return (index + 1).toString();
  }

  bool isCorrect() {
    return correctAnswer == userAnswer;
  }

  QuestionResult({
    required this.index,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });
}
