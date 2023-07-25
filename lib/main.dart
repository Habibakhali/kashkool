import 'package:flutter/material.dart';
import 'package:kashkool/Layout/home_screen.dart';
import 'package:kashkool/Screens/login_screen.dart';
import 'package:kashkool/Style/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        LoginScreen.routeName:(_)=>LoginScreen(),
      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
    );

  }
}
