import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final questionText = "Question Text";
  final answers = "answers";
  final Function(int) answerFunction;
  final List<Map<String, Object>> question;
  final int questionIndex;

  Quiz(
    this.answerFunction,
    this.question,
    this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex][questionText].toString(),
        ),
        ...(question[questionIndex][answers] as List<Map<String, Object>>)
            .map((option) => Answer(
                  option["text"].toString(),
    ()=>answerFunction(option["score"] as int),
                ))
            .toList(),
      ],
    );
  }
}
