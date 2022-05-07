import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/dashboard/widgets/nbContact.dart';
import 'package:lifelinesms/screens/dashboard/widgets/nbMsgSended.widget.dart';
import './widgets/head.widget.dart';
import './../../layouts/appBarLayout.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreen();
  }
}

class _DashboardScreen extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLayout("Dashboard"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Head(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  NbMsgSended(98),
                  NbContact(1300)
                ],
              ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {
          
        },
      ), 
    );
  }
}
