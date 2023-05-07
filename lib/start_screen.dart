import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            height: 300,
            width: 300,
            color: const Color.fromRGBO(255, 255, 255, 0.2)),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Welcome to the Quiz App!\n\nTap the button below to start the quiz!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
