import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final questionText = "Question Text";
  final answers = "answers";
  final VoidCallback answerQuestion;
  final List<Map<String, Object>> question;
  final int questionIndex;

  Quiz(
    this.answerQuestion,
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
        ...(question[questionIndex][answers] as List<String>)
            .map((option) => Answer(option, answerQuestion))
            .toList(),
      ],
    );
  }
}
