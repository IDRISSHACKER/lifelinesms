import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/screenAction/action/newUserAction.dart';
import './../../layouts/appBarLayout.dart';
import './widgets/listUsers.widget.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UsersScreen();
  }
}

class _UsersScreen extends State<UsersScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLayout("Contacts"),
      body: ListUsers(),
      floatingActionButton: newUserAction(context),

    );
  }
}
