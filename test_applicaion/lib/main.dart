import 'package:flutter/material.dart';
import 'package:test_applicaion/quiz.dart';
import 'package:test_applicaion/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questionText = "Question Text";
  final answers = "answers";
  final question = [
    {
      "Question Text": "what is your favourite color?",
      "answers": ["red", "green", "blue", "yellow"]
    },
    {
      "Question Text": "what is your favourite animal?",
      "answers": ["cat", "dog", "bird", "mouse"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < question.length - 1) {
      print(_questionIndex);
    } else {
      print("Completed!!!");
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: _questionIndex < question.length
            ? Quiz(
                _answerQuestion,
                question,
                _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
