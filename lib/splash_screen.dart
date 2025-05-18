import 'package:flutter/material.dart';
import 'dart:async';

import 'login_page.dart'; // Make sure this path matches your project

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo (put your own asset path)
            Image.asset(
              'assets/images/Splash.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                return const Icon(Icons.image_not_supported, size: 100, color: Colors.grey);
              },
            ),

            const SizedBox(height: 20),
            const Text(
              'DairyGo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Fresh Dairy Products at Your Doorstep',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
