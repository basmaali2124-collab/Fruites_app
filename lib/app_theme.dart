 import 'package:flutter/material.dart';

ThemeData appTheme() {
    return ThemeData(
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF204F38),foregroundColor: Colors.white)),
          inputDecorationTheme: InputDecorationTheme(enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(32)),
                    borderSide: BorderSide(color: Color(0xFFE0E0E0)),
                  ),
                  focusedBorder:  OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(32)),
          ),),
          textTheme: TextTheme(),
          colorScheme: .fromSeed(seedColor: Color(0xFF204F38)),
        );
  }