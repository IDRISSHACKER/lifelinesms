import 'package:flutter/material.dart';

class Admin {
  late int id;
  late AdminInfo name;
  late AdminInfo email;
  late AdminInfo phone;
  late String imageUri;

  Admin(this.id, this.name, this.email, this.phone, this.imageUri);
}

class AdminInfo {
  late Icon icon;
  late String info;

  AdminInfo(this.icon, this.info);
}
