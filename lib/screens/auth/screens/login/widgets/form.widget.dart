import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifelinesms/http/Auth/login.http.dart';
import 'package:lifelinesms/screens/MainScreen.dart';
import 'package:lifelinesms/utils/customBtn.dart';
import 'package:lifelinesms/utils/customField.utils.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginForm();
  }
}

class _LoginForm extends State<LoginForm> {
  String email = "";
  String password = "";
  bool creditialError = false;
  bool loading = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 0, left: 0),
        child: Column(
          children: [
            TextFieldContainer(
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                      hintText: "Email address",
                      border: DefaultInputRadius()),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  controller: emailController,
                  validator: (phone) {
                    return phone == null
                        ? "phone number cannot be empty"
                        : null;
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldContainer(
              child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key_rounded),
                      hintText: "Password",
                      border: DefaultInputRadius()),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  controller: passwordController,
                  validator: (password) {
                    if (password == null) {
                      return "password cannot be empty";
                    } else {
                      return null;
                    }
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            loading
            ?  CircularProgressIndicator.adaptive()
            : CustomBtn(
                text: "LogIn",
                icon: Icons.login_rounded,
                onPress: () async {
                  setState(() {
                    creditialError = false;
                    loading = true;
                  });
                  if(email == null || password == null){

                  }else{
                    bool connect = await verifyCredidential(email, password);
                    if (connect) {
                      creditialError = false;
                      await login(context);
                    } else {
                      setState(() {
                        creditialError = true;
                      });
                    }
                  }
                  setState(() {
                      loading = false;
                    });
                }),
                creditialError
                ? Text(
                  "incorrect email or password, try again",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink[600]
                  ),  
                 )
                 : Text("")
          ],
        ));
  }
}
