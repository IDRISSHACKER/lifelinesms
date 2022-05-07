import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/sended/widgets/listMessages.widget.dart';
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
      body: ListMessages()
    );
  }
}
