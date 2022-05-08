import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../layouts/appBarLayout.dart';
import './widgets/formMessage.widget.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewMessage();
  }
}

class _NewMessage extends State<NewMessage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarLayout("New message"),
        body: formMessage()
    );
  }
}
