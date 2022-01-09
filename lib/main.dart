import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questionsList = [
      {
        'questionText': 'What is your favorite color?',
        'answers': ['blue', 'red', 'green']
      },
      {
        'questionText': 'What/s your favorite animal?',
        'answers': ['Dog', 'cat', 'dolphin']
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('New App '),
            centerTitle: true,
            bottomOpacity: 0.8,
          ),
          body: Column(
            children: [
              Question(questionsList[questionIndex]['questionText'] as String),
              ...(questionsList[questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
