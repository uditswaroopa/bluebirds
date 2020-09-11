import 'package:bluebirds/button.dart';
import 'package:bluebirds/buttons.dart';
import 'package:bluebirds/display.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAF202125),
      body: Column(
        children: <Widget>[
          Expanded(flex: 2, child: LCD(),),
          Expanded(
              flex: 7,
              child: Column(
                children: <Widget>[
                  Buttons(b1: 'SHIFT', b2: 'AC', b3: 'C', b4: 'AND'),
                  Buttons(b1: 'LOG', b2: '(', b3: ')', b4: 'OR'),
                  Buttons(b1: 'x^2', b2: 'x^3', b3: 'e^x', b4: 'XOR'),
                  Buttons(b1: 'sin', b2: 'cos', b3: 'tan', b4: 'MOD'),
                  Buttons(b1: 'D to B', b2: 'D to O', b3: 'D to H', b4: '×'),
                  Buttons(b1: '7', b2: '8', b3: '9', b4: '/'),
                  Buttons(b1: '4', b2: '5', b3: '6', b4: '+'),
                  Buttons(b1: '1', b2: '2', b3: '3', b4: '-'),
                  Row(
                    children: <Widget>[
                      Button('0'),
                      Button('.'),
                      Button('='),
                    ],
                  )
                ],
              ),),
        ],
      ),
    );
  }
}
