import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final tells flutter that after initialization data cant't be reassign
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
