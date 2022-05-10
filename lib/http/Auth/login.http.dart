import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/models/Admin.model.dart';
import 'package:lifelinesms/screens/MainScreen.dart';

Future getAdmin() async {
  final uri = "${apiUri}=admin";
  dynamic adminData = [];

  try {
    final data = await get(Uri.parse(uri));
    print(data);
    adminData = jsonDecode(data.body);
    var key = adminData["email"];
    print(key);
  } catch (e) {
    print(e);
  }

  return adminData;
}

Future<bool> verifyCredidential(String email, String password) async {
  dynamic admin = await getAdmin();

  if (admin["email"] == email && admin["password"] == password) {
    return true;
  } else {
    return false;
  }
}

Future<void> perFormSessesion() async {}

Future<void> destroySession() async {}

Future<void> login(BuildContext _) async {
  await perFormSessesion();
  Navigator.push(_, MaterialPageRoute(builder: (_) {
    return MainScreen();
  }));
}
