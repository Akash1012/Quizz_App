import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = resultScore;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your score is  $resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text('Restart Quiz !'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
