import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        //color: Colors.deepPurple.shade500,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}

OutlineInputBorder DefaultInputRadius() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)));
}
