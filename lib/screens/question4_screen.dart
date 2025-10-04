import 'package:flutter/material.dart';
import 'question5_screen.dart';

class Question4Screen extends StatelessWidget {
  final int score;
  const Question4Screen({super.key, required this.score});

  void _answerQuestion(BuildContext context, int additionalScore) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Question5Screen(score: score + additionalScore)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вопрос 4/5")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Кто-то наступил тебе на лапу в транспорте. Твоя реакция?",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 0),
                child: const Text('Спокойно отойти в сторону. Бывает.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, -1),
                child: const Text('Недовольно фыркнуть и бросить осуждающий взгляд.'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _answerQuestion(context, 2),
                child: const Text('Мило улыбнуться и сказать "Ничего страшного!".'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}