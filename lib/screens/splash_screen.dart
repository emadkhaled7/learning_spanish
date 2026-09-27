import 'dart:async';

import 'package:flutter/material.dart';

import 'categories_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        if (!mounted) return;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const CategoriesScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7B2CBF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '🇪🇸',
              style: TextStyle(
                fontSize: 70,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Hola Español',
              style: TextStyle(
                fontFamily: 'GrindyBrush',
                fontSize: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Learn Spanish',
              style: TextStyle(
                fontFamily: 'Facebook',
                fontSize: 18,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 35),

            const SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}