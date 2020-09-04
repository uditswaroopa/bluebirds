import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.navigation,
          size: 20.0,
          color: Colors.grey[800],
        ),
        SizedBox(width: 15.0),
        Text(
          'ASANSOL',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
