import 'package:flutter/material.dart';

Widget NbMsgSended(int nbSMS) {
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
                Text("Nombre de message envoyé",
                style: TextStyle(
                  color: Colors.grey
                ),),
                SizedBox(
                  height: 10.0,
                ),
                Text("$nbSMS", 
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
