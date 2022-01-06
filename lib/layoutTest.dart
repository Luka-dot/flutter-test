import 'package:flutter/cupertino.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Card(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
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
                      'I\'M THE BEST',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'SansPro',
                        letterSpacing: 2.5,
                      ),
                    ),
                    Card(
                      color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Icon(
                            Icons.phone_android,
                            size: 22,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '123-456-7890',
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'SansPro',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 3,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.white70,
                    ),
                    Card(
                      color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          size: 22,
                          color: Colors.black87,
                        ),
                        title: Text(
                          'newGroot@test.com',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'SansPro',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("but 3"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
