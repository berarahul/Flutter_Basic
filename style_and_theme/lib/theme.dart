import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.orange,
  brightness: Brightness.light,
  textTheme: const TextTheme(
    // ignore: deprecated_member_use
    bodyText1: TextStyle(fontSize: 16),
    // ignore: deprecated_member_use
    headline6: TextStyle(fontSize: 20),
  ),
);
