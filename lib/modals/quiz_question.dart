class QuizQuestion {
  const QuizQuestion(
      {required this.answer,
      required this.text,
      this.isAnswered = false,
      required this.correctAnswerIndex});
  final bool isAnswered;
  final String text;
  final int correctAnswerIndex;
  final List<String> answer;

  QuizQuestion copyWith(bool? isAnswered, String? text, int? correctAnswerIndex,
      List<String>? answers) {
    return QuizQuestion(
        answer: answers ?? answer,
        text: text ?? this.text,
        correctAnswerIndex: correctAnswerIndex ?? this.correctAnswerIndex,
        isAnswered: isAnswered ?? this.isAnswered);
  }
}
