import 'package:flutter/material.dart';

Widget NbMsgSended(Widget nbSMS) {
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Card(
      color: Colors.deepPurple,
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 130.0,
        child: Center(
          child: Row(
            children: [
              Container(
               child: Icon(Icons.send_and_archive_sharp, color: Colors.white10, size: 60.0,)
              ),
              Column(
            children: [
                Text("Number of messages sent",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white38
                ),),
                SizedBox(
                  height: 10.0,
                ),
                nbSMS
            ],
          ),
            ]
          )
        ),
      ),      
    ),
  );
}
