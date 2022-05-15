import 'package:flutter/material.dart';
import 'package:lifelinesms/screens/auth/AuthScreen.dart';

class signOutSection extends StatefulWidget {
  const signOutSection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _signOutSection();
  }
}

class _signOutSection extends State<signOutSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(right: 20, left: 20),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AuthScreen();
          }));
        },
        icon: Icon(Icons.logout),
        label: Text("Disonnect"),
        style: ElevatedButton.styleFrom(
          primary: Colors.pink,
          minimumSize: Size(200, 50),
          maximumSize: Size(200, 50),
        ),
      ),
    );
  }
}
