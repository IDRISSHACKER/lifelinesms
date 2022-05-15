import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/auth/screens/login/login.screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AuthScreen();
  }
}

class _AuthScreen extends State<AuthScreen> {
  final auths = [LoginScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: auths[0],
    );
  } 
}
