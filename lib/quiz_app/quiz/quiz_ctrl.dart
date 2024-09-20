import 'package:advance_fundemental/modals/quiz_question.dart';

import 'package:advance_fundemental/quiz_app/quiz/screens/result_screen.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var answers = <int>[].obs;

  var questions = const <QuizQuestion>[
    QuizQuestion(
      question: 'What are the main building block of a flutter Uis?',
      answers: [
        'component',
        'Widgets',
        'Blocks',
        'Function',
      ],
      correctAnswerIndex: 1,
    ),
    QuizQuestion(
      question: 'How Flutter UIs Builts?',
      answers: [
        'By combining Widgets in visual editor',
        'By combining Widgets in config files',
        'By combining Widgets in Android Studio in Android ',
        'By combining Widgets in code',
      ],
      correctAnswerIndex: 3,
    ),
    QuizQuestion(
      question: 'What is the purpose of StateFulWidgets ?',
      answers: [
        'Update Uis as data Changes',
        'Update data as UIs change',
        'Ignore data Changes',
        'Brender UIs not depend on data ',
      ],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question:
          'Which widget should try to use more often : StatelessWidge or StateFulWidgets ?',
      answers: [
        'StateFulWidget',
        'Both are equally good',
        'StatelessWidget',
        'None of above ',
      ],
      correctAnswerIndex: 2,
    ),
    QuizQuestion(
      question: 'What happen if you change data in a  StatelessWidge ?',
      answers: [
        'The UI is not updated',
        'The UI is updated',
        'StatefullWidget is Updated',
        'Any nested StateFulWidget are updated',
      ],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: 'How should you update data inside of  StatelessWidge ?',
      answers: [
        'By calling Setstate()',
        'By calling Updatedata()',
        'By calling UpdateUI()',
        'None of them',
      ],
      correctAnswerIndex: 3,
    ),
  ].obs;
  Rx<int> currentQuestionIndex = 0.obs;
  submitAnswer(int submittedAnswerIndex) async {
    questions[currentQuestionIndex.value] =
        questions[currentQuestionIndex.value].copyWith(
      isAnswered: true,
    );
    answers.add(submittedAnswerIndex);
    update();

    if (currentQuestionIndex.value < questions.length - 1) {
      await Future.delayed(Duration(seconds: 1));
      currentQuestionIndex.value = currentQuestionIndex.value + 1;
      update();
    } else {
      // go to result screen
      Get.to(() => ResultScreen());
      print("result screen");
    }
  }

  void clearAllValues() {
    answers.clear();
    for (int i = 0; i < questions.length; i++) {
      questions[i] = questions[i].copyWith(isAnswered: false);
    }

    currentQuestionIndex.value = 0;
    update();
    questions.refresh();
    answers.refresh();
  }
}
