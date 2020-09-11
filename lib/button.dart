import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String s; // s = '='
  Button(this.s);

//width = 740 - 16 = 624/4 = 131
  @override
  Widget build(BuildContext context) {
    double breadth = (MediaQuery.of(context).size.width-45) / 4;
    return Center(
      child: Container(
          width: s == '=' ? breadth * 2 + 9 : breadth,
          margin: EdgeInsets.fromLTRB(9, 3, 0, 0),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4.0,
            child: Text(s),
            color: Colors.grey,
          )),
    );
  }
}
