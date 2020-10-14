import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Love Calculator',
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String firstName;
  String secondName;
  int percentage;

  void lovePercentage(){
    percentage = calculation(firstName:firstName,secondName:secondName);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ScorePage(percentage: percentage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOVE CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                tag: "homeIcon",
                child: Image(image: AssetImage("assets/images/logo.gif")),
              ),
            ),
          ),
          TextField(
            onChanged: (value){
              firstName = value;
            },
            decoration: InputDecoration(
              hintText: "Enter First Name",
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
          ),
          ),
          TextField(
            onChanged: (value){
              secondName = value;
            },
            decoration: InputDecoration(
              hintText: "Enter First Name",
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              lovePercentage();
            },
            child: Text('Calculate'),
            color: Colors.blue,
          ),
        ],
      ),
    );
   }
  }
  
  class ScorePage extends StatelessWidget {
    // https://stackoverflow.com/questions/52056035/myhomepagekey-key-this-title-superkey-key-in-flutter-what-would-b
    const ScorePage({
      Key key,
      @required this.percentage,
    }) : super(key: key);

    final int percentage;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Hero(
                  tag: "homeIcon",
                  child: Image(image: AssetImage("assets/images/logo.gif")),
                ),
              ),
            ),
            Text(
              "Your Love Percentage is $percentage %",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
            ),
          ],
        ),
      );
    }
  }
  



