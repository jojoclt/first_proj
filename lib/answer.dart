import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String text;
  final int idx;
  final Color colored;
  Answer(this.selectHandler, this.text, {this.idx, this.colored = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: colored,
        textColor: Colors.white,
        child: Text(text + (idx ?? '').toString()),
        onPressed: selectHandler,
      ),
    );
  }
}
