import 'package:flutter/material.dart';
import './question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int index;
  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Questions(
          questions[index]['questionText'],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['Score']), answer['text']);
        }).toList()
      ],
    );
  }
}
