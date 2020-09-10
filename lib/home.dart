import 'package:bluebirds/button.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String expression = '';
  String history = '';

  tap(String x) {
    setState(() {
      expression += x;
    });
  }

  allclear(String x) {
    setState(() {
      expression = '';
      history = '';
    });
  }

  clear(String x) {
    setState(() {
      expression.substring(0, expression.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAF202125),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xAFa0a69a),
                  borderRadius: BorderRadius.circular(7),
                ),
                margin: EdgeInsets.all(8),
                alignment: Alignment.topRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        history,
                        style: TextStyle(
                            fontFamily: 'digital',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 8, 8, 3),
                      child: Text(
                        expression,
                        style: TextStyle(
                            fontFamily: 'digital',
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    Button('AND', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('LOG', tap),
                    Button('(', tap),
                    Button(')', tap),
                    Button('OR', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('x^2', tap),
                    Button('x^3', tap),
                    Button('e^x', tap),
                    Button('XOR', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('sin', tap),
                    Button('cos', tap),
                    Button('tan', tap),
                    Button('MOD', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('D to B', tap),
                    Button('D to O', tap),
                    Button('D to H', tap),
                    Button('×', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('7', tap),
                    Button('8', tap),
                    Button('9', tap),
                    Button('/', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('4', tap),
                    Button('5', tap),
                    Button('6', tap),
                    Button('+', tap),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Button('1', tap),
                    Button('2', tap),
                    Button('3', tap),
                    Button('-', tap),
                  ],
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
