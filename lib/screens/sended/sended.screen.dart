import 'dart:convert';
import 'package:flutter/material.dart';
import './../../layouts/appBarLayout.dart';

class SendedScreen extends StatefulWidget {
  const SendedScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SendedScreen();
  }
}

class _SendedScreen extends State<SendedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLayout("Sended"),
      body: SingleChildScrollView(
        child: Center(
          child: Text("Messages envoyés", textScaleFactor: 3.0,),
        ),
      ) 
    );
  }
}
