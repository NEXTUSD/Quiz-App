import 'package:flutter/material.dart';

//import 'main.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!😘';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!☺️';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!😏';
    } else {
      resultText = 'You are so bad!😡';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 167,
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text(
                "Reset Quiz",
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
              color: Colors.white,
              onPressed: resetHandler,
            )
          ],
        ),
      ),
    );
  }
}
