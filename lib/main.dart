import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App 1'),
          centerTitle: true,
          bottomOpacity: 0.8,
        ),
        body: const Text(
          'Tis is the main text of my App.',
        ),
      ),
    );
  }
}
