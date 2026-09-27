import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const SpanishLearningApp());
}

class SpanishLearningApp extends StatelessWidget {
  const SpanishLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Hola Español',

      theme: ThemeData(
        useMaterial3: true,

        scaffoldBackgroundColor: const Color(0xFFF8F6FA),

        fontFamily: 'Facebook',

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7B2CBF),
        ),

        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),

      home: const SplashScreen(),
    );
  }
}