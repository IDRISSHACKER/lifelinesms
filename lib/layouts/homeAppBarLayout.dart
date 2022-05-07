import "package:flutter/material.dart";

AppBar homeAppBarLayout(String title) {
  return AppBar(
    title: Text(
      title,
      textScaleFactor: 1.2,
    ),
    centerTitle: true,
    elevation: 0.0,
  );
}

