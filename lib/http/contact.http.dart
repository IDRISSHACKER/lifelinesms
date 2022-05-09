import 'dart:convert';

import 'package:http/http.dart';
import 'package:lifelinesms/env/config.dart';
import 'package:lifelinesms/models/User.model.dart';

Future<bool> setUser(AddUser user) async {
  List users = [];
  try {
    final uri = "$apiUri=setUser";
    final response = await post(Uri.parse(uri), body: {
      "nom": "${user.nom}",
      "prenom": "${user.prenom}",
      "email": "${user.email}",
      "pays": "${user.pays}",
      "phone": "${user.phone}",
      "groupe_id": "${user.goupeId}",
    });

    final jsonData = jsonDecode(response.body) as List;
    users = jsonData;
  } catch (e) {
    print(e);
  }

  if (users.isEmpty) {
    return false;
  } else {
    return true;
  }
}
