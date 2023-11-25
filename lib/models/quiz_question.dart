class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(
    this.text,
    this.answers,
  );

  List<String> getShuffledAnsweres() {
    final list = List.of(answers);
    list.shuffle();
    return list;
  }
}
