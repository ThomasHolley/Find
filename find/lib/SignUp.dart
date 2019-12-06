import 'package:find/main.dart' as prefix0;
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext sign) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget build(BuildContext sign) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 110.0, 0.0, 0.0),
            child: Text('Sign Up',
                style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "UserName",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                RaisedButton(
              child: Text("Register"),
              onPressed: () {
                Navigator.push(
                    sign,
                    MaterialPageRoute(builder: (sign) => MyHomePage()                      
                    ));
              }
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
