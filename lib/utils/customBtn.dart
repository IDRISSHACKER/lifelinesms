import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPress;

  const CustomBtn({Key? key, required this.text, required this.icon, required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton.icon(
        onPressed: onPress,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50), // NEW
        ),
      ),
    );
  }
}
