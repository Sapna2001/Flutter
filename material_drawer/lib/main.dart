import 'package:flutter/material.dart';

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
                      children:<Widget> [
                        Image.asset("assets/1.png",
                        fit: BoxFit.cover),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                        myText,
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text("Drawer"),
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                ),
                UserAccountsDrawerHeader(
                  accountName: Text("HSN"),
                  accountEmail: Text("hsn@gmail"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1496439786094-e697ca3584d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account"),
                  trailing: Icon(Icons.edit),
                  subtitle: Text("Person"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  trailing: Icon(Icons.send),
                  subtitle: Text("hsn@gmail.com"),
                ),
              ],
            ),
          ),
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

