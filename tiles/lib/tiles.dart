import 'package:flutter/material.dart';
import 'package:tiles/calling_constructor.dart';

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  constList list = constList();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
         itemCount: list.student.length,
         itemBuilder: (BuildContext context,index) {
            return ListTile(
              title: Text('${list.listName(index)}'),
              subtitle: Text('${list.listRollNo(index)}') ,
            );
         }
     ),
   );
  }
}