import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../layouts/appBarLayout.dart';
import './widgets/formNewUser.action.dart';

class NewUser extends StatefulWidget {
  const NewUser({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewUser();
  }
}

class _NewUser extends State<NewUser> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarLayout("New contact"),
        body: SingleChildScrollView(
          child: formNewUser(),
        )
    );
  }
}
