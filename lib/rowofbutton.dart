import 'package:bluebirds/button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String b1;
  final String b2;
  final String b3;
  final String b4;
  final Function function;

  Buttons(this.b1,this.b2,this.b3,this.b4,this.function);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Button(b1,function),
        Button(b2,function),
        Button(b3,function),
        Button(b4,function),
      ],
    );
  }
}