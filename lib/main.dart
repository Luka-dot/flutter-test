import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questionsList = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['blue', 'red', 'green']
    },
    {
      'questionText': 'What/s your favorite animal?',
      'answers': ['Dog', 'cat', 'dolphin']
    },
  ];

  var questionIndex = 0;

  void answerQuestion() {
    if (questionIndex < questionsList.length) {
      setState(() {
        questionIndex++;
      });
    }

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('New App '),
          centerTitle: true,
          bottomOpacity: 0.8,
        ),
        body: questionIndex < questionsList.length
            ? Quiz(questionsList, questionIndex, answerQuestion)
            : const Center(child: Text('You did it!')),
      ),
    );
  }
}
