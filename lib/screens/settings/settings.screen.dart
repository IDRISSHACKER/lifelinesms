import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lifelinesms/layouts/homeAppBarLayout.dart';
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
      appBar: homeAppBarLayout("", Icon(Icons.verified_user_rounded, size: 34,)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              avatarSection(avatarPath),
              const SizedBox(height: 7,),
              detailsSection(),
              const SizedBox(height: 7,),
              signOutSection(),
              const SizedBox(height: 7,),
            ],
          )
        ),
      ) 
    );
  }
}
