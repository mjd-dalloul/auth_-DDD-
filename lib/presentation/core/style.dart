import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static int lightMode = 0;
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.copyWith(),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        // borderSide: BorderSide(color: Color(0xFFB6B6B6)),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static ThemeData getThemeData() => AppTheme.lightTheme;
}
