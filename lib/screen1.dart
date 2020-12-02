import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 32.0, 10.0, 27.0),

                child: Container(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(width: 100.0,
                  height: 100.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                  ),
                ),
              ),
              SizedBox(height: 25.0,
              width: 25.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
              ),
              SizedBox(height: 50.0,
                width: 25.0,),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.push(
                    (context),
                    MaterialPageRoute(builder: (context) {
                      return Screen2();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
