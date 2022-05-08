import 'package:flutter/material.dart';
import './../newUser/newUser.action.dart';

FloatingActionButton newUserAction(BuildContext _){
  return FloatingActionButton(
    child: Icon(Icons.add_box_rounded),
    onPressed: () {
      Navigator.push(_,
          MaterialPageRoute(builder: (_){
            return NewUser();
          }
          )
      );
    },
  );
}
