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
          child: Container(
            height: 400.0,
            width: 180.0,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            color: Colors.yellow,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, onPrimary: Colors.black),
                      child: Text('Button ONE'),
                      onPressed: () {
                        print('button pressed!');
                      },
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 140,
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: Text('Button TWO!'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
