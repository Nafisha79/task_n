import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool val = false;

  onSwitchValueChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.teal,
        actions: [
          Switch(
              value: val,
              onChanged: (newVal) {
                onSwitchValueChanged(newVal);
              })
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child:
                    Image.asset('images/sky.jpg', width: 160.0, height: 200.0),
              ),
              Container(
                  color: Colors.blueGrey,
                  width: 160.0,
                  height: 87.0,
                  child: Center(
                    child: Text(
                      'NAFISHA RAUMA',
                      style: TextStyle(fontFamily:'OpenSans',color:Colors.amber,fontSize: 25.0,fontWeight: FontWeight.w700),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 50.0,
            width: 50.0,
          ),
          Container(
            height: 25.0,
            width: 100.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.grey, Colors.pinkAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(child: Center(child: Text('BACK')))),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Message')),
        ],
      ),
    );
  }
}

