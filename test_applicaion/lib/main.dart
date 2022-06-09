import 'package:flutter/material.dart';
import 'package:test_applicaion/answer.dart';
import 'package:test_applicaion/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext buildContext) {
    var questions = [
      "what is your favourite color?",
      "what is your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer("Answer 1", answerQuestion),
            Answer("Answer 2", answerQuestion),
            Answer("Answer 3", answerQuestion),
          ],
        ),
      ),
    );
  }
}
