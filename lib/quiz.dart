import 'package:flutter/material.dart';
import './answere.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function ansQuestion;
  final int questionIndex;

  Quiz(
      {@required this.ansQuestion,
      @required this.questionIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Question(questions[questionIndex]['questionText']),
        ),
        SizedBox(
          height: 3,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => ansQuestion(answer['score']), answer['text']);
        }).toList(),
        Padding(
          padding: const EdgeInsets.all(90.0),
          child: Text(
            "✌️",
            style: TextStyle(fontSize: 50),
          ),
        )
      ],
    );
  }
}
