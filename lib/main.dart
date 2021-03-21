import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'White', 'score': 40}
      ],
    },
    {
      'questionText': 'What\s your favorite animal ?',
      'answers': [
        {'text': 'Dog', 'score': 50},
        {'text': 'Lion', 'score': 60},
        {'text': 'Tigger', 'score': 70},
        {'text': 'Rabbit', 'score': 80}
      ],
    },
    {
      'questionText': 'What\s your Faviourite Channel in Youtube ?',
      'answers': [
        {'text': 'COdeWithMe', 'score': 100},
        {'text': 'COdeWithMe', 'score': 100},
        {'text': 'COdeWithMe', 'score': 100},
        {'text': 'COdeWithMe', 'score': 100},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quizz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
