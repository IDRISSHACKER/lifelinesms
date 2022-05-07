import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/utils/avatar.util.dart';
import './../../../utils/load.util.dart';
import './../../../models/Message.model.dart';

class ListMessages extends StatefulWidget {
  const ListMessages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListMessages();
  }
}

class _ListMessages extends State<ListMessages> {
  final userController = ScrollController();
  final url = "$apiUri=getMessages";
  List<Message> _users = [];
  List<Message> _usersLimit = [];
  final int perPage = 10;
  int userPage = 0;
  bool hasMore = true;

  Future fetchMsg() async {
    try {
      List<Message> _usersTmp = [];
      List users = [];

      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      users = jsonData;

      for (int i = 0; i < users.length; i++) {
        var user = users[i];
        Message userFormat = Message(
            user["id"],
            user["content"],
            DateTime.parse(user["created_at"]),
            user["name"],
            user["surname"],
            user["phone"],
            user["pays_id"],
            user["email"]);
        _usersTmp.add(userFormat);
      }
      setState(() {
        _users = _usersTmp;
      });
    } catch (err) {
      print(err.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMsg();
  }

  @override
  void dispose() {
    userController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (_users.isNotEmpty)
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: _users.length,
            //controller: userController,
            itemBuilder: (_, index) {
              
                final user = _users[index];
                return Container(
                    margin: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                    child: Card(
                      elevation: 1.0,
                      child: ListTile(
                        minVerticalPadding: 20.0,
                        leading: avatar(user.name.substring(0,1)),
                        title: Text("${user.name}"),
                        subtitle: Text("${user.content.substring(1,37)}..."),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.message_rounded,
                          ),
                          onPressed: () {},
                        ),
                        onLongPress: () {},
                        onTap: () {},
                      ),
                    ));
            },
          )
        : Load("loading messages");
  }
}
