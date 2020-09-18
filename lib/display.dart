import 'package:bluebirds/model.dart';
import 'package:flutter/material.dart';

class LCD extends StatefulWidget {
  final Model object;
  LCD(this.object); //object received and initialized
  @override
  _LCDState createState() =>
      _LCDState(object); //object passed to _LCDState class
}

class _LCDState extends State<LCD> {
  Model object;
  _LCDState(this.object);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              object.expression =
                  object.expression.substring(0, object.expression.length - 1);
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xAFa0a69a), borderRadius: BorderRadius.circular(7)),
          margin: EdgeInsets.all(8),
          alignment: Alignment.topRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  object.history,
                  style: TextStyle(
                      fontFamily: 'digital',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 8, 8, 3),
                child: Text(
                  object.expression,
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
    );
  }
}
