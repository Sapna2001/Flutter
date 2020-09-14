import 'package:flutter/material.dart';
import 'package:tiles/tiles.dart';

//void main() {
//  runApp(MaterialApp(
//    home: Tiles(),
//  ));
//}

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Tiles(),
    );
  }
}

