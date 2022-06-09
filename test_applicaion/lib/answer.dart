import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerString;
  final VoidCallback selectHandler;

  Answer(
    this.answerString,
    this.selectHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        onPressed: selectHandler,
        color: Colors.blueAccent,
        child: Text(answerString),
      ),
    );
  }
}
