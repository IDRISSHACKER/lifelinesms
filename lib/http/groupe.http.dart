import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/models/Groupe.model.dart';
import 'package:lifelinesms/models/User.model.dart';

Future<List> getGroupes() async {
  List groupes = [];
  try {
    final uri = "$apiUri=getGroups";
    final response = await get(Uri.parse(uri));
    final jsonData = jsonDecode(response.body) as List;
    groupes = jsonData;
  } catch (e) {
    print("Impossible de recuperer les ctgs");
    print(e);
  }

  return groupes;
}

Future<List<Groupe>> getGroupesParsed() async {
  List groupes = await getGroupes();
  final List<Groupe> groupeParsed = groupes.map((_) => Groupe(
      _["id"] as int,
      _["title"],
      _["description"],
      DateTime.parse(_["created_at"]),
      _["nbUser"] as int)) as List<Groupe>;

  return groupeParsed;
}

Future<List<DropdownMenuItem<int>>> getGroupeParsedAsItem() async {
  List groupes = await getGroupes();
  List<DropdownMenuItem<int>> groupeParsed = [];
  for (int i = 0; i < groupes.length; i++) {
    groupeParsed.add(
      DropdownMenuItem<int>(
        child: Text(groupes[i]["title"]),
        value: groupes[i]["id"],
      )
    );
  }
  print(groupeParsed);
  return groupeParsed;
}
