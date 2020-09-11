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
          height: 35,
          margin: EdgeInsets.fromLTRB(9, 9, 0, 0),
          child: RaisedButton(
            onPressed: () {
              f(s);
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4.0,
            child: Text(s,
              style: TextStyle(
                color: s == '=' ? Colors.white : Colors.black,
                fontWeight: FontWeight.w700,
                fontSize:15
              ),
            ),
            color: s == '=' ? Colors.deepOrangeAccent : Colors.grey,
          )),
    );
  }
}
