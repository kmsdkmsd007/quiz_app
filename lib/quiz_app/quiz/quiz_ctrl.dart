import 'package:advance_fundemental/modals/quiz_question.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var answers = <int>[].obs;

  var questions = const <QuizQuestion>[
    QuizQuestion(
      question: 'What are the main building block of a flutter Uis?',
      answer: [
        'component',
        'Widgets',
        'Blocks',
        'Function',
      ],
      correctAnswerIndex: 1,
    ),
    QuizQuestion(
      question: 'How Flutter UIs Builts?',
      answer: [
        'By combining Widgets in visual editor',
        'By combining Widgets in config files',
        'By combining Widgets in Android Studio in Android ',
        'By combining Widgets in code',
      ],
      correctAnswerIndex: 3,
    ),
    QuizQuestion(
      question: 'What is the purpose of StateFulWidgets ?',
      answer: [
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
      answer: [
        'StateFulWidget',
        'Both are equally good',
        'StatelessWidget',
        'None of above ',
      ],
      correctAnswerIndex: 2,
    ),
    QuizQuestion(
      question: 'What happen if you change data in a  StatelessWidge ?',
      answer: [
        'The UI is not updated',
        'The UI is updated',
        'StatefullWidget is Updated',
        'Any nested StateFulWidget are updated',
      ],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: 'How should you update data inside of  StatelessWidge ?',
      answer: [
        'By calling Setstate()',
        'By calling Updatedata()',
        'By calling UpdateUI()',
        'None of them',
      ],
      correctAnswerIndex: 3,
    ),
  ].obs;
  Rx<int> currentQuestionIndex = 0.obs;
  submitAnswer(int questionindex, int submittedAnswerIndex) {
    questions[questionindex] =
        questions[questionindex].copyWith(isAnswered: true);
    answers.add(submittedAnswerIndex);
    if (questions.length < questionindex) {
      currentQuestionIndex.value = currentQuestionIndex.value++;
    } else {
      // go to result screen
    }
  }
}
