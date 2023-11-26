import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      secondary: Colors.black,
      primary: Colors.blue,
      scrim: Colors.white,
      tertiary: Colors.grey.shade200,
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    hintColor: Colors.black87);
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    secondary: Colors.white,
    primary: Colors.blue,
    scrim: Colors.white,
    tertiary: Colors.grey.shade900,
    surface: Colors.grey.shade900,
  ),
  hintColor: Colors.white70,
  secondaryHeaderColor: Colors.white54,
  scaffoldBackgroundColor: Colors.black,
);
