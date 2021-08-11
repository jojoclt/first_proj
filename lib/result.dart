import 'package:flutter/material.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final VoidCallback funcHandler;

  Result(this.funcHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Answer(
        funcHandler,
        "DONE",
        colored: Colors.pink,
      ),
    );
  }
}
