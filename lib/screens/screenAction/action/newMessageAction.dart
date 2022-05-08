import 'package:flutter/material.dart';
import './../newMessage/newMessage.action.dart';

FloatingActionButton newMessageAction(BuildContext _){
  return FloatingActionButton(
    child: Icon(Icons.chat),
    onPressed: () {
      Navigator.push(_,
          MaterialPageRoute(builder: (_){
            return NewMessage();
          }
          )
      );
    },
  );
}
