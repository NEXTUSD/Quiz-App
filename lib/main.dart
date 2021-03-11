import 'package:flutter/material.dart';
//import 'package:quiz_app/answere.dart';
//import 'package:quiz_app/answere.dart';
//import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Political Party?',
      'answers': [
        {'text': 'BJP', 'score': 1},
        {'text': 'Congress', 'score': 1},
        {'text': 'AAP', 'score': 100},
        {'text': 'RJD', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  // ignore: unused_field
  var _totalScore = 0;

  void _resetquiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            //image: new AssetImage("images/logo.png")
            body: _questionIndex < _questions.length
                ? Quiz(
                    ansQuestion: _ansQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(
                    _totalScore,
                    _resetquiz,
                  )));
  }
}
