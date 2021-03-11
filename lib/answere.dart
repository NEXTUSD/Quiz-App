import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  Answer(this.answerHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.black54,
        textColor: Colors.white,
        child: Text(answerText),
        splashColor: Colors.red,
        onPressed: answerHandler,
      ),
    );
  }
}
