import 'package:flutter/material.dart';

SnackBar Success(Icon icon, String message) {
  return SnackBar(
    backgroundColor: Colors.deepPurple,
    content: Row(
    children: [
      icon,
      SizedBox(width: 30,),
      Text(message)
    ]
  ));
}

dynamic ShowSuccess(Icon icon, String message, _){
  return ScaffoldMessenger.of(_).showSnackBar(
     Success(icon, message)
  );
}
