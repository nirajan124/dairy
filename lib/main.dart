import 'package:flutter/material.dart';
import 'view/splash_screen.dart'; // Import the splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DairyGo',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(), // Set splash screen as initial page
    );
  }
}
