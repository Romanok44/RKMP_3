import 'package:flutter/material.dart';
import 'result_screen.dart';

class Question5Screen extends StatelessWidget {
  final int score;
  const Question5Screen({super.key, required this.score});

  void _answerQuestion(BuildContext context, int additionalScore) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen(totalScore: score + additionalScore)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вопрос 5/5")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Вечер настал. Чем займешься?",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 1),
                child: const Text('Устройлю игровую сессию (игры, сериалы, хобби).'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 2),
                child: const Text('Позвоню другу, чтобы поболтать и поделиться новостями.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, -1),
                child: const Text('Меня никто не найдет. Я в домике и отдыхаю от всех.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}