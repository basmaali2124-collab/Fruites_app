import 'package:flutter/material.dart';
import 'package:fruits_app/auth/enter_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF204F38),foregroundColor: Colors.white)),
        inputDecorationTheme: InputDecorationTheme(enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(32)),
                  borderSide: BorderSide(color: Color(0xFFE0E0E0)),
                ),
                focusedBorder:  OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(32)),
        ),),
        colorScheme: .fromSeed(seedColor: Color(0xFF204F38)),
      ),
      home:  EnterNumber()
    );
  }
}

