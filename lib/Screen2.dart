import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image.asset('images/sky.jpg'),
              ),
              Container(
                child: Image.network('https://skyandme.ch/wp-content/uploads/2018/12/sky-and-me-header.jpg'),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[Colors.pinkAccent,Colors.grey],
              ),
            ),
            child: RaisedButton(
              child: Text('BACK'),
              onPressed: (){
                Navigator.pop(context);
              },

            )

          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home'),),
          BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('Message')),


        ],
      ),
    );
  }
}
