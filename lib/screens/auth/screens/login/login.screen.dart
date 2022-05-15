import 'package:flutter/material.dart';
import 'package:lifelinesms/layouts/loginAppBarLayout.dart';
import 'package:lifelinesms/screens/MainScreen.dart';
import 'package:lifelinesms/screens/auth/screens/login/widgets/form.widget.dart';
import 'package:lifelinesms/screens/auth/screens/login/widgets/header.widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginAppBarLayout(""),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                loginHeader(),
                SizedBox(height: 70,), 
                LoginForm(),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
