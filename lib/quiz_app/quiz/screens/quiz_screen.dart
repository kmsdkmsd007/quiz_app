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
    return Scaffold(
      body: Obx(() {
        return Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quizCtrl
                    .questions[quizCtrl.currentQuestionIndex.value].question,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 17),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              ...quizCtrl.answers.map(
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
        );
      }),
    );
  }
}





// 
//import 'package:advance_fundemental/quiz_app/quiz/quiz_ctrl.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class QuestionSummary extends StatelessWidget {
//   QuestionSummary({
//     super.key,
//   });
//   var quizCtrl = Get.put(QuizController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Obx(() {
//           return Column(
//             children: quizCtrl.questions.map((data) {
//               return Row(
//                 children: [
//                   Text(
//                     (quizCtrl.currentQuestionIndex.value + 1).toString(),
//                     style: const TextStyle(
//                       color: Color.fromARGB(255, 229, 233, 5),
//                       fontSize: 19,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 15,
//                     height: 11,
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         const SizedBox(
//                           height: 48,
//                         ),
//                         Text(
//                           data.question as String,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                         // Text(
//                         //   data['user_answer'] as String,
//                         //   style: const TextStyle(
//                         //     color: Color.fromARGB(255, 241, 3, 3),
//                         //     fontSize: 16,
//                         //   ),
//                         // ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           (data['question_answer']).toString(),
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               );
//             }).toList(),
//           );
//         }),
//       ),
//     );
//   }
// }
