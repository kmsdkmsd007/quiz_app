class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;
  List<String> getSuffledAnswers() {
    final shuffled = List.of(answer);
    shuffled.shuffle();
    return shuffled;
  }
}
