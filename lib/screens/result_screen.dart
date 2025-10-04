import 'package:flutter/material.dart';
import 'start_screen.dart';

class ResultScreen extends StatelessWidget {
  final int totalScore;
  const ResultScreen({super.key, required this.totalScore});

  Map<String, dynamic> _getResult() {
    if (totalScore <= 0) {
      return {
        'text': 'СОННЫЙ КОТЕНОК! 🐱‍💤',
        'image': 'assets/images/sleepy_kitten.jpg',
        'description': 'Твой главный девиз сегодня: "Не трогай меня, человек". '
            'Ты ищешь уединения, теплой лежанки и полного покоя. '
            'Лучший вечер — это когда тебя никто не беспокоит. '
            'Отдохни и наберись сил, завтра будет новый день!'
      };
    } else if (totalScore <= 4) {
      return {
        'text': 'КОТЕНОК-НЕВЕДИМКА! 🐱‍👤',
        'image': 'assets/images/stealthy_kitten.jpg',
        'description': 'Ты мастерски балансируешь между общением и уединением. '
            'Ты где-то тут, но ненадолго. Ты не против компании, '
            'но и одиноко тебе не бывает. Ты плывешь по течению дня, '
            'сохраняя загадочное спокойствие и независимость.'
      };
    } else if (totalScore <= 8) {
      return {
        'text': 'ИГРИВЫЙ И ЛЮБОЗНАТЕЛЬНЫЙ КОТЕНОК! 🐱‍🚀',
        'image': 'assets/images/playful_kitten.jpeg',
        'description': 'Мир полон загадок, и ты жаждешь их разгадать! '
            'Сегодня ты полон энергии, готов к новым открытиям и приключениям '
            '(даже если это просто новый маршрут до работы). '
            'Твое любопытство — твой главный проводник. Не забудь поиграть!'
      };
    } else {
      return {
        'text': 'ДОБРЫЙ И СОЦИАЛЬНЫЙ КОТЕНОК! 🥰',
        'image': 'assets/images/social_kitten.jpg',
        'description': 'Ты просто лучик солнца в пушистой шкурке! '
            'Тебе хочется мурлыкать, ластиться ко всем и дарить хорошее настроение. '
            'Ты открыт к общению, готов помочь и просто заряжаешь всех вокруг '
            'своей позитивной энергией. Поделись своим теплом с миром!'
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = _getResult();

    return Scaffold(
      appBar: AppBar(title: const Text("Результат")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Поздравляем!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset(
                result['image'],
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Text(
                "Сегодня ты ${result['text']}",
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                result['description'],
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}