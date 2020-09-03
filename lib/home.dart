import 'package:bluebirds/location.dart';
import 'package:bluebirds/title.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          CircleAvatar(),
          Status(),
          Text('NAME'), //name
          Text('EMAIL'),
          Location(),
          RaisedButton(
            onPressed: () {

            },
            child: Text('Next'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.deepPurpleAccent,
          ), //
        ],
      ),
    );
  }
}
