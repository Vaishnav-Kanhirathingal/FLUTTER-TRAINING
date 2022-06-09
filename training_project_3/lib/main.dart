import 'package:flutter/material.dart';
import 'package:training_project_3/RandomWords.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Name generator"),
        ),
        body: const Center(child: RandomWords()),
      ),
    );
  }
}
