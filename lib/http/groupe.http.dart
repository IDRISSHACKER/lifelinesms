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

  /*return [{"id":37,"title":"202203 Thank you","description":"","created_at":"2022-04-25 19:43:20","nbUser":18},{"id":36,"title":"20202 Thank you","description":"","created_at":"2022-04-25 19:43:35","nbUser":11},{"id":35,"title":"Dec Birthday","description":"","created_at":"2022-04-25 19:42:23","nbUser":17},{"id":34,"title":"Nov Birthday","description":"","created_at":"2022-04-25 19:42:01","nbUser":0},{"id":33,"title":"Oct Birthday","description":"","created_at":"2022-04-25 19:41:50","nbUser":17},{"id":32,"title":"Sept Birthday","description":"","created_at":"2022-04-25 19:41:16","nbUser":19},{"id":31,"title":"Aug Birthday","description":"","created_at":"2022-04-25 19:40:57","nbUser":0},{"id":30,"title":"July Birthday","description":"","created_at":"2022-04-25 19:32:31","nbUser":26},{"id":29,"title":"June Birthday","description":"","created_at":"2022-04-25 19:31:56","nbUser":23},{"id":28,"title":"May Birthday","description":"","created_at":"2022-04-25 19:30:54","nbUser":31},{"id":27,"title":"April Birthday","description":"","created_at":"2022-04-25 19:30:41","nbUser":28},{"id":26,"title":"March Birthday","description":"","created_at":"2022-04-25 19:30:25","nbUser":22},{"id":25,"title":"Feb Birthday","description":"","created_at":"2022-04-25 19:29:36","nbUser":26},{"id":24,"title":"Jan Birthday","description":"","created_at":"2022-04-25 19:29:19","nbUser":38},{"id":22,"title":"LifeLine Staff","description":"","created_at":"2022-01-31 19:53:39","nbUser":3},{"id":21,"title":"HGB","description":"","created_at":"2022-01-31 07:42:13","nbUser":85},{"id":20,"title":"CHU","description":"","created_at":"2022-01-31 07:42:06","nbUser":825},{"id":19,"title":"CV","description":"","created_at":"2022-01-31 07:42:00","nbUser":197}];*/
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

Future<List<DropdownMenuItem<int>>> getGroupeParsedAsItem(int? t) async {
  List groupes = await getGroupes();
  List<DropdownMenuItem<int>> groupeParsed = [];
  for (int i = 0; i < groupes.length; i++) {
    groupeParsed.add(DropdownMenuItem<int>(
      child: Text(groupes[i]["title"]),
      value: groupes[i]["id"],
    ));
  }
  return groupeParsed;
}
