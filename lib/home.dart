import 'package:bluebirds/location.dart';
import 'package:bluebirds/title.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TEAM BLUE BIRDS",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'aerial',
            color: Colors.greenAccent[400],
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/member$val.jpeg'),
            radius: 80,
          ),
          Status(), //Samir
          SizedBox(height: 15.0),
          Text(
            'UDIT SWAROOPA',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Colors.green[800],
            ),
          ), //Udit
          Text(
            'nehab4511@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Location(), //Arnab
          RaisedButton(
            onPressed: () {
              setState(() {
                if (val < 5)
                  val++;
                else
                  val = 1;
              });
            },
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
