import 'package:flutter/material.dart';
import 'question1_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void _startQuiz(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Question1Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Какой ты сегодня котенок?")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Пройди тест и узнай!",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _startQuiz(context),
              child: const Text("Начать тест"),
            ),
          ],
        ),
      ),
    );
  }
}