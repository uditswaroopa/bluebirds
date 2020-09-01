import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String url = 'https://media1.giphy.com/media/mf8UbIDew7e8g/200.gif';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(), //Neha
            body: Column(
              children: <Widget>[
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ArialBlack',
                    color: Colors.greenAccent[400],
                  ),
                ),
                Image.network(url),
                RaisedButton(
                  color: Colors.indigoAccent[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                      splashColor: Colors.indigoAccent[300], //Arnab
                  onPressed: () {},
                  child: Text('Click Me'),
                )
              ],
            )));
  }
}
