import 'package:flutter/material.dart';

class LCD extends StatefulWidget {
  @override
  _LCDState createState() => _LCDState();
}

class _LCDState extends State<LCD> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xAFa0a69a),
          borderRadius: BorderRadius.circular(7)
        ),
        margin: EdgeInsets.all(8),
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '6 % 3 + (4 * 2) - 64 / 2',
              style: TextStyle(fontFamily: 'digital', fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3,8, 8, 3),
            child: Text(
              '27.091',
              style: TextStyle(fontFamily: 'digital', fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
        ]),
      ),
    );
  }
}
