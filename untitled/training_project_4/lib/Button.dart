import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;
  final double textSize;
  final Function callBack;

  CalculatorButton(
    this.text,
    this.fillColor,
    this.textColor,
    this.textSize,
    this.callBack,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fillColor,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: TextButton(
        onPressed: () => {callBack(text)},
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
