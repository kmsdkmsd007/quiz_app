import 'package:advance_fundemental/quiz_app/quiz/screens/quiz_screen.dart';
import 'package:advance_fundemental/quiz_app/quiz/widgets/question_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("WElcome to this app yo wiill test and answer"),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => QuizScreen());
                },
                child: Text("Continue to Quiz")),
          ]),
    );
  }
}
