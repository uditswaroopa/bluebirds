import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String url = 'https://media1.giphy.com/media/mf8UbIDew7e8g/200.gif';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(8, 16, 35, 1),
        appBar: AppBar(
          title: Text('BBIRDS1'),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ), //Neha
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ArialBlack',
                  color: Colors.greenAccent[400],
                ),
              ),
              Image.network(url),
              RaisedButton(
                color: Colors.indigo[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                splashColor: Colors.indigoAccent[50], //Arnab
                onPressed: () {},
                child: Text(
                  'Press Me',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
