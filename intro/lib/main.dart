import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 105,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/Sapna.jpg'),
              ),
            ),
            Text('Hari Sapna Nair',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  letterSpacing: 2.0,
                )),
            Text('Flutter Developer',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  letterSpacing: 2.0,
                )),
            Container(
              width: 500,
              child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue[500],
                    ),
                    title: Text('+91 XXXXXXXXXX'),
                  )),
            ),
            Container(
              width: 500,
              child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.blue[500],
                      ),
                      title: Text('hsn@gmail.com'))),
            ),
          ],
        ),
      ),
    );
  }
}
