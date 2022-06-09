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
  var _totalScore = 0;
  final question = [
    {
      "Question Text": "what is your favourite color?",
      "answers": [
        {"text": "red", "score": 1},
        {"text": "green", "score": 2},
        {"text": "blue", "score": 3},
        {"text": "yellow", "score": 4},
      ]
    },
    {
      "Question Text": "what is your favourite animal?",
      "answers": [
        {"text": "cat", "score": 1},
        {"text": "dog", "score": 2},
        {"text": "bird", "score": 3},
        {"text": "mouse", "score": 4},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < question.length - 1) {
      print(_questionIndex);
    } else {
      print("Completed!!!");
    }
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
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
            : Result(_totalScore,resetQuiz),
      ),
    );
  }
}
