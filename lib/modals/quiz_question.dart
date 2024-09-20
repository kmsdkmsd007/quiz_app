class QuizQuestion {
  const QuizQuestion(
      {required this.answer,
      required this.question,
      this.isAnswered = false,
      required this.correctAnswerIndex});
  final bool isAnswered;
  final String question;
  final int correctAnswerIndex;
  final List<String> answer;

  QuizQuestion copyWith(
      {bool? isAnswered,
      String? text,
      int? correctAnswerIndex,
      List<String>? answers}) {
    return QuizQuestion(
        answer: answers ?? answer,
        question: text ?? this.question,
        correctAnswerIndex: correctAnswerIndex ?? this.correctAnswerIndex,
        isAnswered: isAnswered ?? this.isAnswered);
  }
}
