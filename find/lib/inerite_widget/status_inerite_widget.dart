import "package:flutter/material.dart";
import 'package:flutter/src/widgets/text.dart';

class StatusIneriteWidget extends InheritedWidget{

  final status = [
    {
      'text' : "juytfghvbjkluiygatfghbjahs"
    },
    {
      'text' : "juytfghvbjkluiygatfghbjahs"
    },
    {
      'text' : "juytfghvbjkluiygatfghbjahs"
    },
  ];

  StatusIneriteWidget(Widget child) : super(child: child);

  static StatusIneriteWidget of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(StatusIneriteWidget)as StatusIneriteWidget);
  }

  @override
  bool updateShouldNotify(StatusIneriteWidget oldwidget){
    return oldwidget.status != status;
  }
}