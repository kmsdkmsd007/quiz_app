class QuizQuestion {
  const QuizQuestion(
      {required this.answers,
      required this.question,
      this.isAnswered = false,
      required this.correctAnswerIndex});
  final bool isAnswered;
  final String question;
  final int correctAnswerIndex;
  final List<String> answers;

  QuizQuestion copyWith(
      {bool? isAnswered,
      String? text,
      int? correctAnswerIndex,
      List<String>? answers}) {
    return QuizQuestion(
        answers: answers ?? this.answers,
        question: text ?? this.question,
        correctAnswerIndex: correctAnswerIndex ?? this.correctAnswerIndex,
        isAnswered: isAnswered ?? this.isAnswered);
  }
}
