import 'package:flutter/material.dart';
import 'package:material_drawer/bgImage.dart';
import 'package:material_drawer/myDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController(); //private due to underscore
  var myText = "Change Me" ;
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                    children: <Widget>[
                      BgImage(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        myText,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: _nameController,
                          keyboardType: TextInputType.text,
//                            obscureText: true, (for passwords)
                          decoration: InputDecoration(
                            hintText: "Enter",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                  ),
                ),
              ),
            ),
          drawer: MyDrawer(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton:FloatingActionButton(
            onPressed: (){
              myText = _nameController.text;
              setState(() {
              });
            },
            child: Icon(Icons.refresh),
          )
      ),
    );
  }
}

