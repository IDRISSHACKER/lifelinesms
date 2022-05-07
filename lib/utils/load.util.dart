import 'package:flutter/material.dart';

Widget Load(String text){
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
      // ignore: prefer_const_constructors
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Icon(Icons.cloud_download_outlined, size: 200.0, color: Colors.deepPurple,),
               /*Image.asset(
                  "assets/img/Rolling-1s-200px (1).gif"
                ),*/
                const CircularProgressIndicator(),
                const SizedBox(
                  height: 10.0,
                ),
              Text(
                text,
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              )
            ],
          ),
        ),
      ),
    ));
}