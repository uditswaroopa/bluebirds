import 'package:bluebirds/button.dart';
import 'package:bluebirds/lcd.dart';
import 'package:bluebirds/rowofbutton.dart';
import 'package:flutter/material.dart';
import 'package:bluebirds/model.dart';

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  Model object = new Model('','');

  tap(String x) {
    if(x == 'e^x')
      x = 'e^';
    else if(x == 'MOD')
      x = '%';
    else if(x == 'D to B' || x == 'D to O' || x == 'D to H')
      x = 'Enter decimal number';
    
    setState(() {
      if(object.expression == 'INCORRECT SYNTAX')
        object.expression = '';
      if(object.expression == 'Enter decimal number')
        object.expression = '';
      object.expression += x;

      //expression = object.expression;
    });
  }

  allclear(String x) {
    setState(() {
      object.expression = '';
      object.history = '';

    });
  }

  evaluate(String x){
    setState(() {
      object.history = object.expression + ' = ';
      object.parsing();
    });
  }

  clear(String x) {
    setState(() {
      object.expression.substring(0, object.expression.length - 1);
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
                    Button('C', clear),
                    Button('&', tap),
                  ],
                ),
                Buttons('log','(',')','OR',tap),
                Buttons('^','√','e^x','XOR',tap),
                Buttons('sin','cos','tan','MOD',tap),
                Buttons('D to B','D to O','D to H','*',tap),
                Buttons('7','8','9','÷',tap),
                Buttons('4','5','6','+',tap),
                Buttons('1','2','3','-',tap),
                Row(
                  children: <Widget>[
                    Button('0', tap),
                    Button('.', tap),
                    Button('=', evaluate),
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
