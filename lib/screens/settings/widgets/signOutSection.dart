import 'package:flutter/material.dart';

Widget signOutSection(){
  return Container(
    child: OutlinedButton.icon(
        onPressed: (){},
        icon: Icon(Icons.logout),
        label: Text("Disonnect"),
        style: ButtonStyle(
        ),
    ),
  );
}