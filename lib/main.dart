import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer selected!');
  }

  Widget build(BuildContext context) {
    var questionsList = [
      'What is your favorite color?',
      'What/s your favorite animal?'
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
              Text('Here will be the question!'),
              ElevatedButton(
                  child: Text(questionsList[0]), onPressed: answerQuestion),
              RaisedButton(
                child: Text(
                  questionsList.elementAt(1),
                ),
                onPressed: () => print('Answer TWO choosen!'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer no:3 selected!');
                },
              ),
            ],
          )),
    );
  }
}
