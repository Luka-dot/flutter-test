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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                width: 260.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/avatar1.png'),
                    ),
                    Text('Bob "the" Builder',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 33.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Lobster',
                        )),
                    Text(
                      'Im the BEST',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'SansPro',
                      ),
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
