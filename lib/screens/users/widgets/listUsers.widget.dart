import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/utils/avatar.util.dart';
import './../../../utils/load.util.dart';
import './../../../models/User.model.dart';

class ListUsers extends StatefulWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListUsers();
  }
}

class _ListUsers extends State<ListUsers> {
  final userController = ScrollController();
  final url = "$apiUri=getUsers";
  List<User> _users = [];
  List<User> _usersLimit = [];
  final int perPage = 10;
  int userPage = 0;
  bool hasMore = true;

  Future fetchUser() async {
    try {
      List<User> _usersTmp = [];
      List<User> _usersTmpLimit = [];
      List users = [];

      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      users = jsonData;

      for (int i = 0; i < users.length; i++) {
        var user = users[i];
        User userFormat = User(
            user["id"],
            user["name"],
            user["surname"],
            user["pays_id"],
            user["email"],
            user["phone"],
            user["groupe_id"],
            DateTime.parse(user["created_at"]),
            user["title"]);
        _usersTmp.add(userFormat);
        if (i < 10) {
          _usersTmpLimit.add(userFormat);
        }
      }
      setState(() {
        _usersLimit = _usersTmpLimit;
        _users = _usersTmp;
      });
    } catch (err) {
      print(err.toString());
    }

    //setNewUser();
  }

  setNewUser() {
    List<User> _tmpUsersLimit = [];
    if ((userPage + perPage) < _users.length) {
      for (int i = userPage; i <= userPage + perPage; i++) {
        _tmpUsersLimit.add(_users[i]);
      }
      setState(() {
        _usersLimit = _tmpUsersLimit;
        userPage += perPage;
      });
    } else {
      for (int i = userPage + 1; i <= _users.length; i++) {
        _tmpUsersLimit.add(_users[i]);
      }
      setState(() {
        _usersLimit = _tmpUsersLimit;
        userPage += _users.length - userPage;
        hasMore = false;
      });
    }

    print("has more");
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
    userController.addListener(() {
      if (userController.position.maxScrollExtent == userController.offset) {
        setNewUser();
      }
    });
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
            itemCount: _users.length -1,
            //controller: userController,
            itemBuilder: (_, index) {
              if (index < _users.length) {
                final user = _users[index];
                return Container(
                    margin: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                    child: Card(
                      elevation: 1.0,
                      child: ListTile(
                        leading: avatar(user.name.substring(0,1)),
                        title: Text("${user.name} ${user.surname}"),
                        subtitle: Text("+${user.pays_id}${user.phone}"),
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
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Center(
                    child: hasMore
                        ? const CircularProgressIndicator()
                        : const Text("No more contact to load"),
                  ),
                );
              }
            },
          )
        : Load("loading contacts");
  }
}
