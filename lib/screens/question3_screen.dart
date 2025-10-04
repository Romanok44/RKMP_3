import 'package:flutter/material.dart';
import 'question4_screen.dart';

class Question3Screen extends StatelessWidget {
  final int score;
  const Question3Screen({super.key, required this.score});

  void _answerQuestion(BuildContext context, int additionalScore) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Question4Screen(score: score + additionalScore)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вопрос 3/5")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Как пройдет твой день?",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 1),
                child: const Text('Планово и продуктивно. Я составлю список дел и последую ему.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 2),
                child: const Text('Я буду исследовать что-то новое и следовать за своим любопытством.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, -1),
                child: const Text('Где мое самое уютное местечко? Идеальный день для отдыха.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}