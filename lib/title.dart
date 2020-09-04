import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlutterLogo(size: 30.0),
        SizedBox(height: 10.0),
        Text(
          'DEVELOPER',
          style: TextStyle(
            letterSpacing: 3.0,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
