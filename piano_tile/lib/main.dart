import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        title: "Piano Tiles",
        home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Image.asset("assets/images/background.jpg",
          fit: BoxFit.cover,
          ),
          Row(
            children: <Widget>[
              Expanded(child: Container()),
              LineDivider(),
              Expanded(child: Container()),
              LineDivider(),
              Expanded(child: Container()),
              LineDivider(),
              Expanded(child: Container()),
              LineDivider(),
            ],
          )
        ],
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 1,
      color: Colors.white,
    );
  }
}
