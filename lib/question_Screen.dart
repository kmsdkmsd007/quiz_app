import 'package:advance_fundemental/data/question.dart';
import 'package:advance_fundemental/modals/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currenQuestionIndwx = 0;

  void anwserQuestion(String onSelectedAnswer) {
    widget.onSelectedAnswer(onSelectedAnswer);
    setState(() {
      currenQuestionIndwx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currenQuestionIndwx];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 17),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 22,
            ),
            ...currentQuestion.getSuffledAnswers().map(
              (answers) {
                return AnswerButton(
                    aswertext: answers,
                    onTap: () {
                      anwserQuestion(answers);
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
