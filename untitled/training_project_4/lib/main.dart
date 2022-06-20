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
  void callBackFun(String text) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CalculatorButton(
                  "7",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "4",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "1",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  ".",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CalculatorButton(
                  "8",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "5",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "2",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "0",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CalculatorButton(
                  "9",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "6",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "3",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "=",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CalculatorButton(
                  "+",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "-",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "X",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
                CalculatorButton(
                  "/",
                  Colors.cyan,
                  Colors.black,
                  28,
                  callBackFun,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
