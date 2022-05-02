import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Man Rabbuk?',
      'answers': [
        {'text': 'Allah', 'score': 100},
        {'text': 'Jesus', 'score': 0},
        {'text': 'Dajjal', 'score': 0},
        {'text': 'Other', 'score': 0},
      ],
    },
    {
      'questionText': 'Maa Deenuk?',
      'answers': [
        {'text': 'Secularism', 'score': 0},
        {'text': 'Islam', 'score': 100},
        {'text': 'Science', 'score': 0},
        {'text': 'Other', 'score': 0},
      ],
    },
    {
      'questionText': 'Man Nabiyyuk?',
      'answers': [
        {'text': 'Stephen Hawkins', 'score': 0},
        {'text': 'Darwin', 'score': 0},
        {'text': 'Muhammad', 'score': 100},
        {'text': 'Other', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
