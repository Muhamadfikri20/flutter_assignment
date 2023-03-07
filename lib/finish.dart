import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Finish(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'Finish';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
