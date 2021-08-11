import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(E e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  final clr = [Colors.green, Colors.blue];
  Quiz({this.answerQuestion, this.questions, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          (questions[questionIndex]['questionText'] as String) +
              questionIndex.toString(),
          clr[questionIndex],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(
                  answerQuestion,
                  answer,
                  colored: clr[questionIndex],
                ))
            .toList(),
        // ...(_questions[_questionIdx]['answers'] as List<String>)
        //     .mapIndexed((e, i) => Answer(
        //         () => _answerQuestion(e + i.toString()), e, i,
        //         colored: clr[_questionIdx]))
        //     .toList(),
      ],
    );
  }
}
