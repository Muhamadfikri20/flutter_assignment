import 'package:flutter/material.dart';
import 'package:flutter_assignment/amount.dart';
import 'package:flutter_assignment/sum.dart';

class Increment extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  Increment({@required @required this.answerQuestion, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Amount(questionIndex), Sum(() => answerQuestion(questionIndex))],
    );
  }
}
