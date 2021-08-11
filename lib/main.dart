import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  final _questions = const [
    {
      'questionText': "What's your favorite Color?",
      'answers': ['Blue', 'Red', 'White', 'Green', 'Purple']
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Cat', 'Dog', 'Pusheen']
    },
  ];
  void _answerQuestion(text) {
    print("Answer $text Choosen!");
    _answered();
  }

  void _answered() {
    // if (_questionIdx + 1 < questions.length)
    setState(() {
      _questionIdx++;
    });
  }

  void _goback() {
    if (_questionIdx == 0) return;
    setState(() => _questionIdx = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                answerQuestion: _answered,
                questions: _questions,
                questionIndex: _questionIdx,
              )
            : Result(_goback),
      ),
    );
  }
}
