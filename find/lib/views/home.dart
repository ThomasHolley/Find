import 'package:find/inerite_widget/status_inerite_widget.dart';
import 'package:find/provider/status_provider.dart';
import 'package:flutter/material.dart';
import 'status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("home page"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Thomas"),
              accountEmail: new Text("Thomas.holley@sts-sio-caen.info"),
              currentAccountPicture: new CircleAvatar(),
            ),
            new ListTile(
              title: new Text("Profil"),
              onTap: () {},
            ),
            new ListTile(
              title: new Text("Settings"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),


      body: FutureBuilder(
        future: StatusProvider.getStatusList(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            final status = snapshot.data;
      return ListView.builder(
        itemBuilder: (context, index){
          return Card(
            child: Padding(padding: const EdgeInsets.only(top: 30.0,bottom: 30.0, left: 13.0, right: 23.0),
            child: Column(
              children: <Widget>[
                _statusText(status[index]["text"]),
              ],
            ),
          ),
          );
        },
        itemCount: status.length,
      );

        }
       
        return Center(child: CircularProgressIndicator());
        },
      ),
       floatingActionButton: FloatingActionButton(
        onPressed:(){
       
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Status()));
        } ,
        child: Icon(Icons.add),
        )
    );
  }
}

class _statusText extends StatelessWidget{
  final String _text;

  _statusText(this._text);

  @override
  Widget build(BuildContext context){
    return Text(
      _text,
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}
