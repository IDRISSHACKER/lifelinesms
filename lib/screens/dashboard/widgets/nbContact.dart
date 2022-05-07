import 'package:flutter/material.dart';

Widget NbContact(int nbcontact) {
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
                Text("Nombre de contact",
                style: TextStyle(
                  color: Colors.grey
                ),),
                SizedBox(
                  height: 10.0,
                ),
                Text("$nbcontact", 
                  style: TextStyle(
                     fontSize: 40,
                     fontWeight: FontWeight.w900,
                     //color: Colors.blueGrey
                  )
              )
            ],
          ),
        ),
      ),      
    ),
  );
}
