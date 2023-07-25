import 'package:flutter/material.dart';

class MyTheme {
  static const Color bg = Color.fromRGBO(249, 245, 235, 1.0);
  static const Color blue = Color.fromRGBO(28, 56, 121, 1.0);
  static const Color babyBlue = Color.fromRGBO(96, 126, 170, 1.0);
  static const Color bg2 = Color.fromRGBO(234, 227, 210, 1.0);
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: bg2,
    primaryColor: blue,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          //border radius equal to or more than 50% of width
        ),
        padding: EdgeInsets.all(15),
       ),
      ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: blue, fontSize: 30)),
  );
  static ThemeData darkMode = ThemeData();
}
