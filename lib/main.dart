import 'package:flutter/material.dart';
import 'package:game_streaming/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Streaming',
      theme: ThemeData(
        brightness: Brightness.dark,
        // accentColor: Color(0xff0095f3),
        accentColor: Color(0xffEEB76B),
        appBarTheme: AppBarTheme(
          elevation: 0,
          // backgroundColor: Colors.white,
          backgroundColor: Color(0xff08112a),
        ),
        textTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500),
            headline1: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w600),
            headline3: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600),
            headline4: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w600),
            caption: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            subtitle1: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 12,
            )),
      ),
      home: HomeScreen(),
    );
  }
}
