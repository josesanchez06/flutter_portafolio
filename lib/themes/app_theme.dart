import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.grey[50],
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );
}
