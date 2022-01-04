import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Orange App'),
          backgroundColor: Colors.deepOrange,
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("but one"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.amber,
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("but TWO"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("but 3"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
