import 'package:advance_fundemental/data/question.dart';
import 'package:advance_fundemental/quiz_app/quiz/widgets/question_widget.dart';
import 'package:advance_fundemental/quiz_app/quiz/screens/result_screen.dart';
import 'package:advance_fundemental/start_page.dart';
import 'package:flutter/material.dart';

var activeScreen = 'Start-Screen';
List<String> selectedAnswer = [];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartPage(switchScreen);
    if (activeScreen == 'Question-Screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswer,
      );
    }
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: screenWidget,
      )),
    );
  }
}

/// this nw

