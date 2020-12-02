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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 27.0, 10.0, 27.0),
            child: Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Center(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'username',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'password',
              border: InputBorder.none,
            ),
          ),
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
    );
  }
}
