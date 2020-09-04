import 'package:bluebirds/location.dart';
import 'package:bluebirds/title.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  int val = 0;
  List<String> name = [
    'Samir Gope',
    'Neha Banerjee',
    'Arnab Sinha',
    'Udit Swaroopa'
  ];
  List<String> email = [
    'samirgope@gmail.com',
    'nehab490@gmail.com',
    'arnabsinha3108@gmail.com',
    'uditswaroopa@icloud.com'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 20.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/member${val + 1}.jpeg'),
              radius: 80,
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.width - 100,
            width: MediaQuery.of(context).size.width - 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.grey[200],
              elevation: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 20),
                  Status(),
                  SizedBox(height: 20),
                  Text(
                    name[val].toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 1.1,
                      fontSize: 27.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 20),
                  Location(),
                  SizedBox(height: 20),
                  Text(
                    email[val],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                if (val != 3) //0,1,2,3
                  val++;
                else
                  val = 0;
              });
            },
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 35,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.grey[900],
          ),
        ],
      ),
    );
  }
}
