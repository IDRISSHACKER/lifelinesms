import "package:flutter/material.dart";

AppBar appBarLayout(String title) {
  return AppBar(
    title: Text(
      title,
      textScaleFactor: 1.2,
    ),
    centerTitle: true,
  );
}

