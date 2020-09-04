import 'package:bluebirds/info.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BLUEBIRDS",
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'aerial',
                color: Colors.grey[400],
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.grey[850],
        ),
        body: Info());
  }
}
