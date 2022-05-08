import 'package:flutter/material.dart';

Widget detailsSection(){
  return Container(
    child: Column(
      children: [
        Text(
          "Idriss duval",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24
          ),
        ),
        SizedBox(height: 2.0,),
        Text("idrisscoder@gmail.com"),
        SizedBox(height: 4.0,),
        Text("+234691911074"),
      ],
    ),
  );
}