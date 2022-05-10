import 'package:flutter/material.dart';

Widget signOutSection(){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(right: 20, left: 20),
    child: ElevatedButton.icon(
        onPressed: (){},
        icon: Icon(Icons.logout),
        label: Text("Disonnect"),
        style: ElevatedButton.styleFrom(
          primary: Colors.pink,
          minimumSize: Size(200, 50),
          maximumSize: Size(200, 50),
        ), 
    ),
  );
}