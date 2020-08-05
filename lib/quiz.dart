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
    final mediaQuery = MediaQuery.of(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: (mediaQuery.size.height - mediaQuery.padding.top) * .25,
          child: Questions(
            questions[index]['questionText'],
          ),
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['Score']), answer['text']);
        }).toList()
      ],
    );
  }
}
