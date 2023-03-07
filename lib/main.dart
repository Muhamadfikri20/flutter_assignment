import 'package:flutter/material.dart';
import 'package:flutter_assignment/finish.dart';
import 'package:flutter_assignment/increment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < 10) {
      print('We have more question!');
    } else {
      print('No more questions!');
    }
    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Increment Aplikasi'),
            ),
            body: _questionIndex < 10
                ? Increment(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Finish(_totalScore, _resetQuiz)));
  }
}
