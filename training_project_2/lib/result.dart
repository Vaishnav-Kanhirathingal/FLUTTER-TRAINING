import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 2) {
      resultText = "r1";
    } else if (resultScore <= 4) {
      resultText = "r2";
    } else if (resultScore <= 6) {
      resultText = "r3";
    } else {
      resultText = "fail";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(onPressed: reset, child: Text("reset"))
      ],
    ));
  }
}
