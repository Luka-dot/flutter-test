import 'package:flutter/material.dart';

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
              Text(questionsList[questionIndex]),
              ElevatedButton(
                  child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(
                child: Text(
                  'Answer 2',
                ),
                onPressed: () => print('Answer TWO choosen!'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer no:3 selected!');
                  setState(() {
                    questionIndex = 0;
                  });
                },
              ),
            ],
          )),
    );
  }
}
