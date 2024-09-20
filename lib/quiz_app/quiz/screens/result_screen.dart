import 'package:advance_fundemental/data/question.dart';

import 'package:advance_fundemental/question_Summary.dart';
import 'package:advance_fundemental/quiz.dart';

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<Map<String, Object>> get summeryData {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < widget.choosenAnswer.length; i++) {
      summery.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'question_answer': questions[i].answer[0],
          // 'correct_answer': questions[i].answer[0],
          'user_answer': widget.choosenAnswer[i],
        },
      );
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    // final lastSummery = summeryData();
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summeryData.where((data) {
      return data['user_answer'] == data['question_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $numCorrectAnswer from $numTotalQuestion question',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 12,
            ),
            QuestionSummary(summeryData),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    selectedAnswer.clear();
                    activeScreen = 'Question-Screen';
                  });
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => Quiz()));
                },
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
