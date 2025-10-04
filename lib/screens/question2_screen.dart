import 'package:flutter/material.dart';
import 'question3_screen.dart';

class Question2Screen extends StatelessWidget {
  final int score;
  const Question2Screen({super.key, required this.score});

  void _answerQuestion(BuildContext context, int additionalScore) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Question3Screen(score: score + additionalScore)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вопрос 2/5")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Что ты хочешь на завтрак?",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 1),
                child: const Text('Что-нибудь вкусненькое и сладкое, чтобы порадовать себя.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 0),
                child: const Text('Просто кофе/чай. Главное — функциональность.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 2),
                child: const Text('Сейчас бы поймать сочную сосиску или кусочек сыра!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}