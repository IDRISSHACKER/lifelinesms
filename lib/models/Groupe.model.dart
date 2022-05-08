import 'package:flutter/material.dart';

class Groupe {
  late int id;
  late String title;
  late var description;
  late DateTime created_at;
  late int nbUser;

  Groupe(this.id, this.title, this.description, this.created_at, this.nbUser);
}

DropdownMenuItem<int> Ctg(String text, int id) {
  return DropdownMenuItem<int>(
    child: Text(text),
    value: id,
  );
}
