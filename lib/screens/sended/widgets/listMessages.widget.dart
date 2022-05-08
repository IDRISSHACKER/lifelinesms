import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/utils/avatar.util.dart';
import 'package:lifelinesms/utils/subStr.utils.dart';
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
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;
      List<Message> messageParsed = await compute(parseJsonToMessage, jsonData);
      setState(() {
        _users = messageParsed;
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
                      leading: avatar(user.name.substring(0, 1)),
                      title: Text("${user.name}"),
                      subtitle: Text(subStr(user.content, 37)),
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

List<Message> parseJsonToMessage(List messages) {
  List<Message> messagesParsed = [];
  for (int i = 0; i < messages.length; i++) {
    var message = messages[i];
    Message messageParsed = Message(
        message["id"],
        message["content"],
        DateTime.parse(message["created_at"]),
        message["name"],
        message["surname"],
        message["phone"],
        message["pays_id"],
        message["email"]);
    messagesParsed.add(messageParsed);
  }
  return messagesParsed;
}
