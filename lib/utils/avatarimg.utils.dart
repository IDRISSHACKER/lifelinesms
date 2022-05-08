import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget avatarimg(String img) {
  return Container(
    height: 150,
    child:  ClipRRect(
      borderRadius : BorderRadius.circular(100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        color: Colors.deepPurple.shade100,
        child: ClipRRect(
          borderRadius : BorderRadius.circular(100),
          child: Image.asset(img),
        )
      ),
    )
  );
}
