import 'package:flutter/material.dart';

Widget NbContact(Widget contactState) {
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Card(
      color: Colors.blueAccent,
      child: Container(
        height: 130.0,
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Row(
            children: [
              Container(
                child: Icon(Icons.verified_user_sharp, color: Colors.white10, size: 60.0,)
              ),
              Column(
              children: [
                  Text("Nombre de contact",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white38
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  contactState
              ],
            ),
            ],
          )
        ),
      ),      
    ),
  );
}
