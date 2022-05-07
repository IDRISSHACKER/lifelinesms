import 'package:flutter/material.dart';

class NotUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
      // ignore: prefer_const_constructors
      child: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Icon(Icons.cloud_download_outlined, size: 200.0, color: Colors.deepPurple,),
               Image.asset(
                  "assets/img/Rolling-1s-200px (1).gif"
                ),
                SizedBox(
                  height: 10.0,
                ),
              Text(
                "Chargement des contacts",
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
