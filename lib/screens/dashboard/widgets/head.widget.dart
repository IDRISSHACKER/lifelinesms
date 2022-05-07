import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget Head() {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(50)
      ),
      color: Colors.deepPurple,
      image: DecorationImage(
              image:  AssetImage("assets/img/individual_illustration-5c61db260714aaf0f713.png")
            )
    ),
    child: Stack(
      children: [
        Positioned(
          top: 60,
          left: 0,
          child: Container(
            height: 80,
            width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(60),
              bottomRight: Radius.circular(50)
            ),
            color: Colors.white
          ),
        )
        ),
        Positioned(
          top: 90,
          left: 20,
          child: Text("Your Statistiques", 
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.w700
          ),)
        )
      ],
    ),
  );
}
