import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rows and Columns"),
        ),
        body: Container(
          width: 1000,
          height: 1000,
          color: Colors.black,
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(100),
          margin: const EdgeInsets.all(200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        )
      ),
    );
  }
}
