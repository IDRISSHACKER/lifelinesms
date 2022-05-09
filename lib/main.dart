import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App.dart';

extension on List<int> {
  int get ihsum => fold(0, (a, b) => a + b);
}

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  ByteData data =
      await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());

  print([2, 5, 5, 6, 999, 333].ihsum);

  runApp(const MyApp());
}
