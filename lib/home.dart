import 'package:bluebirds/button.dart';
import 'package:bluebirds/display.dart';
import 'package:bluebirds/model.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  Model object = new Model('', ''); //creating object of class Model

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
            child: LCD(object),//object passed to LCD widget
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                //represent column1
                Row(
                  children: <Widget>[
                    Button('SHIFT', tap),
                    Button('AC', allclear),
                    Button('C', tap),
                    Button('AND', tap),
                  ],
                ),
                //represent column2
                Row(
                  children: <Widget>[
                    Button('LOG',tap),
                    Button('(',tap),
                    Button(')',tap),
                    Button('OR',tap),
                  ],
                ),
                //represent column3
                Row(
                  children: <Widget>[
                    Button('x^2',tap),
                    Button('x^3',tap),
                    Button('e^x',tap),
                    Button('XOR',tap),
                  ],
                ),
                //represent column4
                Row(
                  children: <Widget>[
                    Button('sin',tap),
                    Button('cos',tap),
                    Button('tan',tap),
                    Button('MOD',tap),
                  ],
                ),
                //represent column5
                Row(
                  children: <Widget>[
                    Button('D to B',tap),
                    Button('D to O',tap),
                    Button('D to H',tap),
                    Button('*',tap),
                  ],
                ),
                //represent column6
                Row(
                  children: <Widget>[
                    Button('7',tap),
                    Button('8',tap),
                    Button('9',tap),
                    Button('/',tap),
                  ],
                ),
                //represent column7
                Row(
                  children: <Widget>[
                    Button('4',tap),
                    Button('5',tap),
                    Button('6',tap),
                    Button('+',tap),
                  ],
                ),
                //represent column8
                Row(
                  children: <Widget>[
                    Button('1',tap),
                    Button('2',tap),
                    Button('3',tap),
                    Button('-',tap),
                  ],
                ),
                //represent column9
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
