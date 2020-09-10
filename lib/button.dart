import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String s;
  final Function f;
  Button(this.s,this.f);
  @override
  Widget build(BuildContext context) {
    double breadth = (MediaQuery.of(context).size.width - 45) / 4;
    return Center(
      child: Container(
          width: s == '=' ? breadth * 2 + 10 : breadth,
          margin: EdgeInsets.fromLTRB(9, 3, 0, 0),
          child: RaisedButton(
            onPressed: () {
              f(s);
            },
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
