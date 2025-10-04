import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Какой ты сегодня котенок?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const StartScreen(title: 'Какой ты сегодня котенок?'),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.title});

  final String title;

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

// Question 1 Screen
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

// Question 2 Screen
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

// Question 3 Screen
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

// Question 4 Screen
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

// Question 5 Screen
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

// Result Screen
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