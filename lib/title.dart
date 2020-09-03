import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              Icon(Icons.ac_unit),
              Text('F'),
            ],
    );
  }
}