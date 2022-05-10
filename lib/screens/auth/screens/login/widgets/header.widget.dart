import 'package:flutter/material.dart';

Widget loginHeader() {
  return Container(
    padding: EdgeInsets.only(right: 20, left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("login with email address",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 22,),
        Text("It' recommanded to connect your email address for us to better protect your  information",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
