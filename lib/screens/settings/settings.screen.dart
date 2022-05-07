import 'dart:convert';
import 'package:flutter/material.dart';
import './../../layouts/appBarLayout.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SettingsScreen();
  }
}

class _SettingsScreen extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLayout("Settings"),
      body: SingleChildScrollView(
        child: Center(
          child: Text("Setting", textScaleFactor: 3.0,),
        ),
      ) 
    );
  }
}
