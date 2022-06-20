import 'package:flutter/material.dart';
import 'package:training_project_4/Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentNumber = "";
  String action = "+";
  double number = 0.0;
  bool decimal = false;
  var calculationActions = ["+", "-", "/", "X"];
  var otherActions = ["AC", "C", "<", "=", "+/-"];

  void callBackFun(String text) {
    if (calculationActions.contains(text)) {
      //do calculation
      performAction(action);
      decimal = false;
      action = text;
      currentNumber = "";
    } else if (otherActions.contains(text)) {
      switch (text) {
        case "AC":
          currentNumber = "";
          action = "+";
          number = 0.0;
          decimal = false;
          break;
        case "C":
          currentNumber = "";
          decimal = false;
          break;
        case "<":
          if (currentNumber.isNotEmpty) {
            currentNumber =
                currentNumber.substring(0, currentNumber.length - 1);
          }
          break;
        case "=":
          performAction(action);
          currentNumber = number.toString();
          action = "+";
          number = 0.0;
          decimal = false;
          break;
        case "+/-":
          if (currentNumber.startsWith("-")) {
            currentNumber = currentNumber.substring(1, currentNumber.length);
          } else {
            currentNumber = "-$currentNumber";
          }
          break;
      }
      //do calculation
    } else if (text == "." && decimal == false) {
      currentNumber += text;
      decimal = true;
    } else if (text != ".") {
      currentNumber += text;
    }
    print(currentNumber);
    setState(() {});
  }

  void performAction(String action) {
    switch (action) {
      case "+":
        number += double.parse(currentNumber);
        break;
      case "-":
        number -= double.parse(currentNumber);
        break;
      case "/":
        number /= double.parse(currentNumber);
        break;
      case "X":
        number *= double.parse(currentNumber);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("S: $number", style: const TextStyle(fontSize: 36))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("A: $action", style: const TextStyle(fontSize: 36))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("[$currentNumber]", style: const TextStyle(fontSize: 36))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "AC",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "C",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "<",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "/",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "9",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "8",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "7",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "X",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "6",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "5",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "4",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "-",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "3",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "2",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "1",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "+",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "+/-",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "0",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: ".",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
              CalculatorButton(
                text: "=",
                fillColor: Colors.cyan,
                textColor: Colors.black,
                textSize: 28,
                callBack: callBackFun,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
