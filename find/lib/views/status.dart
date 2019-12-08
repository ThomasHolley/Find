import 'package:find/inerite_widget/status_inerite_widget.dart';
import 'package:find/provider/status_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/text.dart';

class Status extends StatefulWidget{



  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {

final TextEditingController _textController = TextEditingController();    //Creation d'une nouvelle methode TextEdittingController

  List<Map<String, String>> get _status => StatusIneriteWidget.of(context).status;  //Recupération des données de status



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          
        children: <Widget>[
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: "nouveau commentaire",
            ),
          ),

          Row(
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  final text = _textController.text;      //Quand clique sur le bouton le text est implémenté dans la methode 
                                                                        //et ajouter dans la base
                StatusProvider.insertStatus({
                  'text' : text
                });

                  Navigator.pop(context);
                },
                child: Text("Publier",
                style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              )
            ],
          )
        ],
      ),
      )
    );
  }
}