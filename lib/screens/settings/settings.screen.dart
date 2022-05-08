import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/settings/widgets/detailsSection.dart';
import 'package:lifelinesms/screens/settings/widgets/signOutSection.dart';
import './../../layouts/appBarLayout.dart';
import './widgets/avatarSection.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SettingsScreen();
  }
}

class _SettingsScreen extends State<SettingsScreen> {
  final String avatarPath = "assets/img/avatar.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLayout("Settings"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              avatarSection(avatarPath),
              detailsSection(),
              const SizedBox(height: 20,),
              signOutSection()
            ],
          )
        ),
      ) 
    );
  }
}
