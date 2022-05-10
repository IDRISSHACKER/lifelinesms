import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/MainScreen.dart';

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
    return SingleChildScrollView(
      child: Center(
        child: Container(
          child: Column(
            children: [
              Text("Login here"),
              ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (_){
                        return MainScreen();
                      }
                    )
                    );
                  },
                  child: Text("Home page"))
            ],
          ),
        ),
      ),
    );
  }
}
