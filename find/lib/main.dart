import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'inerite_widget/status_inerite_widget.dart';
import 'views/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatusIneriteWidget(
          MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
 
    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          "FindMe",
          textScaleFactor: 2.0,
          style: TextStyle(fontSize: 35.0),
        ),
        new Form(

          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Username",
                    ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  decoration: new InputDecoration(labelText: "Password"),
                ),
              )
            ],
          ),
        ),
        RaisedButton(
          child: Text("Login"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          },
        )
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login page'),
      ),
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }
}
