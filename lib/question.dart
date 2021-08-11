import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final Color clr;

  Question(this.questionText, this.clr);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          color: clr,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
