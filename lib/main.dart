import 'package:flutter/material.dart';
import 'package:fruits_app/splash_screen.dart';
import 'package:fruits_app/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: .fromSeed(seedColor: Color(0xFF204F38)),
      ),
      home: const WelcomeScreen ()
    );
  }
}

