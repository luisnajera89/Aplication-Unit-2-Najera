import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Colors.blue;

  static final ThemeData blueDarkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData blueLightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
