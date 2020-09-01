import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
);
  }
}
