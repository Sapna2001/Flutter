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
     backgroundColor: Colors.red,
     body: ListView.builder(
         padding: const EdgeInsets.all(25),
         itemCount: list.student.length,
         itemBuilder: (BuildContext context,index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(2.0,3.0),
                    )
                  ],
                  gradient: LinearGradient(colors: [Colors.lightBlue,Colors.white,Colors.lightBlue])
              ),
              child: ListTile(
                  title: Text('${list.listName(index)}',
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                  subtitle: Text('${list.listRollNo(index)}',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black) ,
              ),
            )
            );
         }
     ),
   );
  }
}