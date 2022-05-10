import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

AppBar appBarLayout(String title) {
  return AppBar(
    //backgroundColor: Colors.white,
    elevation: 2.0,
    title: Text(
      title,
      textScaleFactor: 1.2,
      style: TextStyle(
        //color: Colors.black87,
        //fontSize: 20.0,
        //fontWeight: FontWeight.w100
      ),
    ),
    centerTitle: true,
  );
}

