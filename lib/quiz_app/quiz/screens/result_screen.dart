import 'package:advance_fundemental/quiz_app/quiz/quiz_ctrl.dart';
import 'package:advance_fundemental/quiz_app/quiz/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});
  var ctrl = Get.find<QuizController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            ctrl.clearAllValues();
            Navigator.pop(context);
          },
          child: Text("Restart")),
      body: ListView.builder(
          itemCount: ctrl.questions.length,
          itemBuilder: (c, i) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: context.height / 80,
                    horizontal: context.width / 60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: context.height / 30,
                        horizontal: context.width / 20),
                    child: Column(
                      children: [
                        Text(
                          "Question # ${i + 1}",
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: context.height / 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                ctrl.questions[i].question,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height / 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ctrl.questions[i]
                                  .answers[ctrl.answers[ctrl.answers[i]]],
                              style: TextStyle(
                                  color: ctrl.answers[i] ==
                                          ctrl.questions[i].correctAnswerIndex
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            SizedBox(
                              width: context.width / 80,
                            ),
                            ctrl.answers[i] ==
                                    ctrl.questions[i].correctAnswerIndex
                                ? Icon(
                                    Icons.grade_outlined,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.abc,
                                    color: Colors.red,
                                  )
                          ],
                        ),
                        if (ctrl.answers[i] !=
                            ctrl.questions[i].correctAnswerIndex)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Correct Answer:  ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(ctrl.questions[i].answers[
                                  ctrl.questions[i].correctAnswerIndex]),
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
