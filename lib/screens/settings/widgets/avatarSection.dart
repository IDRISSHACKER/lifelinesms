import 'package:flutter/material.dart';
import 'package:lifelinesms/utils/avatarimg.utils.dart';

Widget avatarSection(String img){
  return Container(
    height: 250,
    color: Colors.deepPurple,
    child: Center(
      child: Center(
        child: Column(
          children: [
            Expanded(child: Center()),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: avatarimg(img),
              ),
            ),
            Center(
              child: Text(
              "Idriss duval",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
              ),
            ),
            ),
            Expanded(child: Center()),
          ],
        ),
      ),
    ),
  );
}