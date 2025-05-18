import 'package:dairy_go_project/login_page.dart';
import 'package:dairy_go_project/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // <-- Add const if LoginPage is const
    );
  }
}
