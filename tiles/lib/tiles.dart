import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:tiles/calling_constructor.dart';

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {

  // init -> build -> dispose

  @override
  void initState() {
    super.initState();
  }

//  @override
//  void dispose() {
//    super.dispose();
//  }

//  getHttpData() async {
//    var url = 'https://jsonplaceholder.typicode.com/users';
//   Future<http.Response> response = http.get(url);
////    if (response.statusCode == 200) {
////      var jsonResponse = convert.jsonDecode(response.body);
////      print(jsonResponse[0]["title"]);
////    } else {
////      print('Request failed with status: ${response.statusCode}.');
////    }
//  }

//  getDioData() async {
//  var dio = Dio();
//  Response response = await dio.get('https://jsonplaceholder.typicode.com/users');
//  print(response.data[0]["title"]);
//  }

  Future<http.Response> fetchAlbum() {
    return http.get('https://jsonplaceholder.typicode.com/albums/1');
  }

  ConstList list = ConstList();  //instance created
  @override
  Widget build(BuildContext context) {
    getHttpData();
   return Scaffold(
     backgroundColor: Colors.blueGrey,
     body: ListView.builder(
         padding: const EdgeInsets.all(25),
         itemCount: list.student.length,
         itemBuilder: (BuildContext context,index) {
            return Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
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
                  gradient: LinearGradient(colors: [Colors.lightBlue,Colors.lightGreenAccent,Colors.yellow,Colors.orange,Colors.red,])
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