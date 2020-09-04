import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlutterLogo(size: 60.0),
        SizedBox(height: 10.0),
        // Text(
        //   'DEVELOPER',
        //   style: TextStyle(
        //     color: Colors.white70,
        //     letterSpacing: 3.0,
        //     fontSize: 30.0,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
      ],
    );
  }
}
