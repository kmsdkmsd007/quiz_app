import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});
  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 102,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Image.asset(
              'asset/images/OIP.jpeg',
            ),
          ),
          const SizedBox(
            height: 122,
          ),
          const Text(
            'Learn Flutrer the fun way  !',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(
            height: 22,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            label: const Text('Start Here'),
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
