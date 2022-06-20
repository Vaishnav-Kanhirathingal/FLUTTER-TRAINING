import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String? text;
  final Color? fillColor;
  final Color? textColor;
  final double? textSize;
  final Function? callBack;

  CalculatorButton({
    @required this.text,
    @required this.fillColor,
    @required this.textColor,
    @required this.textSize,
    @required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fillColor,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: TextButton(
        onPressed: () => {callBack!(text)},
        child: Text(
          text!,
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
