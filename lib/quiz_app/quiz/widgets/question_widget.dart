import 'package:advance_fundemental/quiz_app/quiz/quiz_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({
    super.key,
  });

  var quizCtrl = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
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
