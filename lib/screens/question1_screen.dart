import 'package:flutter/material.dart';
import 'question2_screen.dart';

class Question1Screen extends StatelessWidget {
  const Question1Screen({super.key});

  void _answerQuestion(BuildContext context, int score) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Question2Screen(score: score)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вопрос 1/5")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Твой будильник прозвенел. Первая мысль?",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, -1),
                child: const Text('"Уже?! Еще пять минуточек..."'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 2),
                child: const Text('"Время начинать день! Столько всего интересного!"'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 0),
                child: const Text('"Мой день начнется тогда, когда я сам этого захочу."'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}