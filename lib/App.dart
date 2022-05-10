import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifelinesms/screens/auth/AuthScreen.dart';
import 'screens/MainScreen.dart';

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
  
}
class _MyApp extends State<MyApp> {
  final mains = [AuthScreen(), MainScreen()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "LifelineSMS",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.deepPurple
          )
        ),
        home: mains[0]
      );
  }

}


