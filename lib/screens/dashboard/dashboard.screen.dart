import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lifelinesms/layouts/homeAppBarLayout.dart';
import 'package:lifelinesms/screens/dashboard/widgets/nbContact.dart';
import 'package:lifelinesms/screens/dashboard/widgets/nbMsgSended.widget.dart';
import 'package:lifelinesms/screens/dashboard/widgets/openWebsite.widget.dart';
import './widgets/head.widget.dart';
import './../../layouts/appBarLayout.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import './../screenAction/action/newMessageAction.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreen();
  }
}

class _DashboardScreen extends State<DashboardScreen> {
  int nbContact = 0;
  int nbMessages = 0;

  Future fetchUsers() async {
    try {
      final url = "$apiUri=getUsers";
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        nbContact = jsonData.length;
      });
    } catch (e) {
      print("Erreur http");
    }
  }

  Future fechMsg() async {
    try {
      final urlMsg = "$apiUri=getMessages";
      final responseMsg = await get(Uri.parse(urlMsg));
      final jsonDataMsg = jsonDecode(responseMsg.body) as List;

      setState(() {
        nbMessages = jsonDataMsg.length;
      });
    } catch (e) {
      print("Erreur http");
    }
  }

  @override
  void initState() {
    super.initState();
    fechMsg();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBarLayout("Dashboard"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Head(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NbMsgSended((nbMessages == 0)
                        ? CircularProgressIndicator(
                            color: Colors.white38,
                          )
                        : Text("$nbMessages",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              //color: Colors.blueGrey
                            ))),
                    NbContact((nbContact == 0)
                        ? CircularProgressIndicator(
                            color: Colors.white38,
                          )
                        : Text("$nbContact",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              //color: Colors.blueGrey
                            )))
                  ],
                ),
              ),
              //OpenWebsiteWidget()
            ],
          ),
        ),
      ),
      floatingActionButton: newMessageAction(context),
    );
  }
}
