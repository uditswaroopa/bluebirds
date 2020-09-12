import 'package:bluebirds/button.dart';
import 'package:bluebirds/buttons.dart';
import 'package:bluebirds/display.dart';
import 'package:bluebirds/model.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  Model object = new Model('', '');

  tap(String x) {
    setState(() {
      object.expression += x;
    });
  }

  allclear(String x) {
    setState(() {
      object.expression = '';
      object.history = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAF202125),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: LCD(object),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Button('SHIFT', tap),
                    Button('AC', allclear),
                    Button('C', tap),
                    Button('AND', tap),
                  ],
                ),
                Buttons(
                  b1: 'LOG',
                  b2: '(',
                  b3: ')',
                  b4: 'OR',
                  func: tap,
                ),
                Buttons(
                  b1: 'x^2',
                  b2: 'x^3',
                  b3: 'e^x',
                  b4: 'XOR',
                  func: tap,
                ),
                Buttons(
                  b1: 'sin',
                  b2: 'cos',
                  b3: 'tan',
                  b4: 'MOD',
                  func: tap,
                ),
                Buttons(
                  b1: 'D to B',
                  b2: 'D to O',
                  b3: 'D to H',
                  b4: '×',
                  func: tap,
                ),
                Buttons(
                  b1: '7',
                  b2: '8',
                  b3: '9',
                  b4: '/',
                  func: tap,
                ),
                Buttons(
                  b1: '4',
                  b2: '5',
                  b3: '6',
                  b4: '+',
                  func: tap,
                ),
                Buttons(
                  b1: '1',
                  b2: '2',
                  b3: '3',
                  b4: '-',
                  func: tap,
                ),
                Row(
                  children: <Widget>[
                    Button('0', tap),
                    Button('.', tap),
                    Button('=', tap),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
