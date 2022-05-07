import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget avatar(String firstLetter) {
  return CircleAvatar(
    backgroundColor: Colors.deepPurple.shade200,
    child: Text(firstLetter),
  );
}
