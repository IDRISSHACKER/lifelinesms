import 'package:flutter/material.dart';
import './sended/sended.screen.dart';
import './settings/settings.screen.dart';
import './users/users.screen.dart';
import './dashboard/dashboard.screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  int currentScreen = 0;
  List<Widget> screens = [DashboardScreen(), UsersScreen(), SendedScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: (value) => setState(() {
          currentScreen = value;
        }),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded),
              label: "Dashboard"
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility_rounded),
              label: "Profile"),
        ],
      ),
    );
  }
}
